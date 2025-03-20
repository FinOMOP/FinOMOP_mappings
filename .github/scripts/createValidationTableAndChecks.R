#
# Setting environment
#
githubWorkspace <- Sys.getenv("GITHUB_WORKSPACE")
pathToOMOPVocabularyCSVsFolder <- file.path(githubWorkspace, "input_data/input_omop_vocabulary")
pathToVocabularyFolder <- file.path(githubWorkspace, "VOCABULARIES")
pathToOutputFolder <- file.path(githubWorkspace, "output_data")
dir.create(pathToOutputFolder, showWarnings = FALSE, recursive = TRUE)

# create a temporary copy of the OMOP vocabulary duckdb file
pathToOMOPVocabularyDuckDBfile <- tempfile(fileext = ".duckdb")

connectionDetails <- DatabaseConnector::createConnectionDetails(
    dbms = "duckdb",
    server = pathToOMOPVocabularyDuckDBfile
)

vocabularyDatabaseSchema <- "main"

connection <- DatabaseConnector::connect(connectionDetails)

ROMOPMappingTools::omopVocabularyCSVsToDuckDB(
    pathToOMOPVocabularyCSVsFolder = pathToOMOPVocabularyCSVsFolder,
    connection = connection,
    vocabularyDatabaseSchema = vocabularyDatabaseSchema
)

DatabaseConnector::disconnect(connection)

#
# Run function
#
pathToValidationResultsFolder <- file.path(pathToOutputFolder, "validationResults")
dir.create(pathToValidationResultsFolder, showWarnings = FALSE, recursive = TRUE)

validationLogTibble <- ROMOPMappingTools::buildVocabulariesAll(
    pathToVocabularyFolder = pathToVocabularyFolder,
    connectionDetails = connectionDetails,
    vocabularyDatabaseSchema = vocabularyDatabaseSchema,
    pathToCodeCountsFolder = pathToCodeCountsFolder,
    validationResultsFolder = pathToValidationResultsFolder
)

# Write rm
pathToValidationStatusMdFile <- file.path(pathToOutputFolder, "validationStatus.md")
ROMOPMappingTools::buildValidationStatusMd(
    validationLogTibble = validationLogTibble,
    pathToValidationStatusMdFile = pathToValidationStatusMdFile
)

