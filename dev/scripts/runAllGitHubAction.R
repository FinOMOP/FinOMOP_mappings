#
# runAllGitHubAction.R
#
# This script set the variable to run the validation of the vocabularies in the GitHub Action.
# 1. set the environment variables
# 2. call runAllBase.R
#

#
# Setting environment
#
githubWorkspace <- Sys.getenv("GITHUB_WORKSPACE")
createDashboard <- Sys.getenv("CREATE_DASHBOARD")
pathToOMOPVocabularyCSVsFolder <- file.path(githubWorkspace, "input_data/input_omop_vocabulary")
pathToVocabularyFolder <- file.path(githubWorkspace, "VOCABULARIES")
validationResultsFolder <- pathToVocabularyFolder
pathToDashboardFolder <- "public"

#
# Run function
#
source("dev/scripts/runAllBase.R")