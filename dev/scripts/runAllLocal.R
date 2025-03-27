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
    remotes::install_github("FinOMOP/ROMOPMappingTools", ref = "towards_v2", force = TRUE)
}

#
# Setting environment
#
createDashboard <- "TRUE"
pathToOMOPVocabularyCSVsFolder <- "../OMOP_vocabularies/data/input_omop_vocabulary" # SET TO LOCAL PATH
pathToVocabularyFolder <- "./VOCABULARIES"
pathToCodeCountsFolder <- "./CODE_COUNTS"
validationResultsFolder <- "./output_data/VOCABULARIES"
validationResultsFolder <- pathToVocabularyFolder
pathToDashboardFolder <- file.path(getwd(), "output_data", "public")

#
# Run function
#
source("dev/scripts/runAllBase.R")
