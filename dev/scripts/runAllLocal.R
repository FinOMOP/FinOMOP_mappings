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
createDashboard <- "TRUE"
pathToOMOPVocabularyCSVsFolder <- "../OMOP_vocabularies/data/input_omop_vocabulary"
pathToVocabularyFolder <- "./VOCABULARIES"
pathToCodeCountsFolder <- "./CODE_COUNTS"
validationResultsFolder <- "./output_data/VOCABULARIES"
#validationResultsFolder <- pathToVocabularyFolder
pathToDashboardFolder <- "./output_data/public"

#
# Run function
#
source("dev/scripts/runAllBase.R")
