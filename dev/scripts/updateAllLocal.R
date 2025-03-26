#
# updateAllLocal.R
#
# This script set the variable to run the validation of the vocabularies locally.
# 1. install dependencies
# 2. set the environment variables
# 3. call runAllBase.R
#

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
pathToOMOPVocabularyCSVsFolder <- "../OMOP_vocabularies/data/input_omop_vocabulary" # SET TO LOCAL PATH
pathToVocabularyFolder <- "./VOCABULARIES"
updateResultsFolder <- "./output_data/VOCABULARIES"
#updateResultsFolder <- pathToVocabularyFolder


if (!dir.exists(updateResultsFolder)) {
    dir.create(updateResultsFolder, showWarnings = FALSE, recursive = TRUE)
}

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
connection <- DatabaseConnector::connect(connectionDetails)
updateLogTibble <- ROMOPMappingTools::updateVocabularyFolder(
    pathToVocabularyFolder = pathToVocabularyFolder,
    connection = connection,
    vocabularyDatabaseSchema = vocabularyDatabaseSchema,
    updateResultsFolder = updateResultsFolder
)

DatabaseConnector::disconnect(connection)

updateLogTibble |> print(n = Inf)