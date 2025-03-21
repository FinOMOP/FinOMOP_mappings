#
# install dependencies
# 
if (require("remotes")) {
    install.packages("remotes")
}
if (require("ROMOPMappingTools")) {
    remotes::install_github("FinOMOP/ROMOPMappingTools", ref = "towards_v2", force = TRUE)
}

#
# Setting environment
#
pathToOMOPVocabularyCSVsFolder <- "../OMOP_vocabularies/data/input_omop_vocabulary"
pathToVocabularyFolder <- "./VOCABULARIES"
pathToCodeCountsFolder <- "./CODE_COUNTS"

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

# Run function
validationResultsFolder <- file.path(tempdir(), "validationResults")
dir.create(validationResultsFolder, showWarnings = FALSE, recursive = TRUE)

validationLogTibble <- ROMOPMappingTools::buildVocabulariesAll(
    pathToVocabularyFolder = pathToVocabularyFolder,
    connectionDetails = connectionDetails,
    vocabularyDatabaseSchema = vocabularyDatabaseSchema,
    pathToCodeCountsFolder = pathToCodeCountsFolder,
    validationResultsFolder = validationResultsFolder
)
