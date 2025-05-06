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
if (createDashboard == "TRUE" & any(validationLogTibble$type != "ERROR")) {
    message("Creating dashboard")

    dir.create(pathToDashboardFolder, showWarnings = FALSE, recursive = TRUE)

    validationLogTibble_dashboard <- ROMOPMappingTools::buildStatusDashboard(
        pathToCodeCountsFolder = pathToCodeCountsFolder,
        connectionDetails = connectionDetails,
        vocabularyDatabaseSchema = vocabularyDatabaseSchema,
        output_file_html = file.path(pathToDashboardFolder, "MappingStatusDashboard.html")
    )

    validationLogTibble  <- dplyr::bind_rows(validationLogTibble, validationLogTibble_dashboard)
}

message("Building validation status markdown file")
ROMOPMappingTools::buildValidationStatusMd(
    validationLogTibble = validationLogTibble,
    pathToValidationStatusMdFile = file.path(validationResultsFolder, "VOCABULARIES_VALIDATION_STATUS.md")
)

#
# pass final status to github action
#
FINAL_STATUS = "SUCCESS"
if (any(validationLogTibble$type == "WARNING")) {
    FINAL_STATUS = "WARNING"
}
if (any(validationLogTibble$type == "ERROR")) {
    FINAL_STATUS = "ERROR"
}

message("FINAL_STATUS: ", FINAL_STATUS)

writeLines(FINAL_STATUS, "/tmp/FINAL_STATUS.txt")
