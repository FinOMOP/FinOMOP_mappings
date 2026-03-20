pathToUsagiFile <- system.file("testdata/VOCABULARIES/LABfi_ALL/LABfi_ALL.usagi.csv", package = "ROMOPMappingTools")
pathToOMOPVocabularyDuckDBfile <- helper_createATemporaryCopyOfTheOMOPVocabularyDuckDB()

# TEMP
pathToOMOPVocabularyDuckDBfile <- pathToFullOMOPVocabularyDuckDBfile
#

withr::defer(unlink(pathToOMOPVocabularyDuckDBfile))

pathToUnitConversionFile <- system.file("testdata/VOCABULARIES/LABfi_ALL/quantity_source_unit_conversion.tsv", package = "ROMOPMappingTools")
pathToValidUnitsFile <- system.file("testdata/VOCABULARIES/UNITfi/UNITfi.usagi.csv", package = "ROMOPMappingTools")

pathToValidatedUsagiFile <- tempfile(fileext = ".csv")
pathToValidatedUnitConversionFile <- tempfile(fileext = ".tsv")
vocabularyDatabaseSchema <- "main"
sourceConceptIdOffset <- 2002400000


# Create connection to test database
connection <- DatabaseConnector::connect(
    dbms = "duckdb",
    server = pathToOMOPVocabularyDuckDBfile
)
on.exit(DatabaseConnector::disconnect(connection))


validationsSummary <- validateUsagiFile(
    pathToUsagiFile,
    connection,
    vocabularyDatabaseSchema,
    pathToValidatedUsagiFile,
    sourceConceptIdOffset,
    pathToValidUnitsFile,
    pathToUnitConversionFile,
    pathToValidatedUnitConversionFile
)

validationsSummary
pathToValidatedUnitConversionFile |>
    readr::read_tsv() |>
    View()

validatedUsagiFile <- readUsagiFile(pathToValidatedUsagiFile)


validatedUsagiFile |>
    dplyr::filter(stringr::str_detect(`ADD_INFO:validationMessages`, "with omop_quantity ")) |>
    dplyr::filter(stringr::str_detect(`ADD_INFO:validationMessages`, "ERROR")) |>
    select(sourceName, `ADD_INFO:validationMessages`) |>
    View()
