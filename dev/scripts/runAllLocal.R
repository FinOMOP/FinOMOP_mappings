#
# runAllLocal.R
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
    remotes::install_github("FinOMOP/ROMOPMappingTools", force = TRUE)
}
if (require("zip")) {
    install.packages("zip")
}

#
# Setting environment
#
createDashboard <- TRUE
createVocabularies <- FALSE
pathToOMOPVocabularyCSVsFolder <- "../OMOP_vocabularies/data/input_omop_vocabulary" # SET TO LOCAL PATH
pathToOMOPVocabularyCSVsFolderOutput <- tempdir()
pathToVocabularyFolder <- "./VOCABULARIES"
pathToCodeCountsFolder <- "./CODE_COUNTS"
validationResultsFolder <- "./output_data/VOCABULARIES"
validationResultsFolder <- pathToVocabularyFolder
pathToDashboardFolder <- file.path(getwd(), "output_data", "public")
fileIssueRepo <- "FinOMOP/FinOMOP_mappings"

#
# Run function
#
source("dev/scripts/runAllBase.R")

#
# Open the dashboard in the browser
#
browseURL(file.path(pathToDashboardFolder, "index.html"))



a  <- readr::read_csv("VOCABULARIES/LABfi_ALL/LABfi_ALL.usagi.csv", col_types = readr::cols(.default = "c"))

a  |> dplyr::count(nchar(sourceCode)>50)

b <- a |> dplyr::mutate(
    sourceCode = ifelse(nchar(sourceCode) > 50,
                        paste0(substr(sourceCode, 1, 23), '..', substr(sourceCode, nchar(sourceCode)-22, nchar(sourceCode))),
                        sourceCode)
)

b  |> readr::write_csv("VOCABULARIES/LABfi_ALL/LABfi_ALL.usagi.csv", na = "")

b  |> dplyr::count(sourceCode, .sort = TRUE)
