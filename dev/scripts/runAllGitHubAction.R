#
# Setting environment
#
githubWorkspace <- Sys.getenv("GITHUB_WORKSPACE")
createDashboard <- Sys.getenv("CREATE_DASHBOARD")
pathToOMOPVocabularyCSVsFolder <- file.path(githubWorkspace, "input_data/input_omop_vocabulary")
pathToVocabularyFolder <- file.path(githubWorkspace, "VOCABULARIES")
pathToOutputFolder <- pathToVocabularyFolder
pathToDashboardFolder <- "public"

#
# Run function
#
source("dev/scripts/runAllBase.R")