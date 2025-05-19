#
# runAllBase.R
#
# This script is the main script that is called by runAllLocal.R or runAllGitHubAction.R.
#


if (!dir.exists(validationResultsFolder)) {
    dir.create(validationResultsFolder, showWarnings = FALSE, recursive = TRUE)
}

# create a temporary copy of the OMOP vocabulary duckdb file
message("Creating temporary copy of the OMOP vocabulary duckdb file")
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
message("Running function to build vocabularies")
validationLogTibble <- ROMOPMappingTools::buildVocabulariesAll(
    pathToVocabularyFolder = pathToVocabularyFolder,
    connectionDetails = connectionDetails,
    vocabularyDatabaseSchema = vocabularyDatabaseSchema,
    validationResultsFolder = validationResultsFolder
)

#
# Create dashboard
#
if (createDashboard == TRUE & any(validationLogTibble$type != "ERROR")) {
    message("Creating dashboard")

    dir.create(pathToDashboardFolder, showWarnings = FALSE, recursive = TRUE)

    ROMOPMappingTools::buildStatusDashboard(
        pathToCodeCountsFolder = pathToCodeCountsFolder,
        pathToVocabularyFolder = pathToVocabularyFolder,
        connectionDetails = connectionDetails,
        vocabularyDatabaseSchema = vocabularyDatabaseSchema,
        outputFolderPath = pathToDashboardFolder
    )

}

message("Building validation status markdown file")
ROMOPMappingTools::buildValidationStatusMd(
    validationLogTibble = validationLogTibble,
    pathToValidationStatusMdFile = file.path(validationResultsFolder, "VOCABULARIES_VALIDATION_STATUS.md")
)

#
# Build vocabularies
#
if (createVocabularies == TRUE & any(validationLogTibble$type != "ERROR")) {
    message("Building vocabularies")
    connectionDetails <- DatabaseConnector::createConnectionDetails(
        dbms = "duckdb",
        server = pathToOMOPVocabularyDuckDBfile
    )

    vocabularyDatabaseSchema <- "main"

    pathToOMOPVocabularyCSVsFolder <- file.path(pathToOMOPVocabularyCSVsFolderOutput, "OMOP_vocabulary")
    if (!dir.exists(pathToOMOPVocabularyCSVsFolder)) {
        dir.create(pathToOMOPVocabularyCSVsFolder, showWarnings = FALSE, recursive = TRUE)
    }

    connection <- DatabaseConnector::connect(connectionDetails)

    ROMOPMappingTools::duckdbToOMOPVocabularyCSVs(
        connection = connection,
        vocabularyDatabaseSchema = vocabularyDatabaseSchema,
        OMOPVocabularyTableNames = NULL,
        pathToOMOPVocabularyCSVsFolder = pathToOMOPVocabularyCSVsFolder
    )

    DatabaseConnector::disconnect(connection)

    # Create a zip file of the OMOP vocabulary CSVs
    zip::zipr(
        zipfile = file.path(pathToOMOPVocabularyCSVsFolderOutput, "FinOMOP_vocabularies.zip"),
        files = list.files(pathToOMOPVocabularyCSVsFolder, full.names = TRUE)
    )
}

#
# pass final status to github action
#
FINAL_STATUS <- "SUCCESS"
if (any(validationLogTibble$type == "WARNING")) {
    FINAL_STATUS <- "WARNING"
}
if (any(validationLogTibble$type == "ERROR")) {
    FINAL_STATUS <- "ERROR"
}

message("FINAL_STATUS: ", FINAL_STATUS)

writeLines(FINAL_STATUS, "/tmp/FINAL_STATUS.txt")
