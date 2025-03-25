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
validationLogTibble <- ROMOPMappingTools::buildVocabulariesAll(
    pathToVocabularyFolder = pathToVocabularyFolder,
    connectionDetails = connectionDetails,
    vocabularyDatabaseSchema = vocabularyDatabaseSchema,
    validationResultsFolder = pathToVocabularyFolder
)

ROMOPMappingTools::buildValidationStatusMd(
    validationLogTibble = validationLogTibble,
    pathToValidationStatusMdFile = file.path(pathToVocabularyFolder, "VOCABULARIES_VALIDATION_STATUS.md")
)


#
# pass final status to github action
#

Sys.setenv(FINAL_STATUS = "SUCCESS")
if (any(validationLogTibble$status == "WARNING")) {
    Sys.setenv(FINAL_STATUS = "WARNING")
}
if (any(validationLogTibble$status == "ERROR")) {
    Sys.setenv(FINAL_STATUS = "ERROR")
}


