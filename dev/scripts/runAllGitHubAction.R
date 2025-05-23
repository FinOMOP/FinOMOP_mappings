#
# runAllGitHubAction.R
#
# This script set the variable to run the validation of the vocabularies in the GitHub Action.
# 1. set the environment variables
# 2. call runAllBase.R
#

#
# validate arguments
#
if (Sys.getenv("BUILD_DASHBOARD") == "TRUE" | Sys.getenv("BUILD_DASHBOARD") == "true") {
    createDashboard <- TRUE
} else if (Sys.getenv("BUILD_DASHBOARD") == "FALSE" | Sys.getenv("BUILD_DASHBOARD") == "false") {
    createDashboard <- FALSE
} else {
    stop("BUILD_DASHBOARD is not set to TRUE or FALSE")
}

if (Sys.getenv("BUILD_VOCABULARIES") == "TRUE" | Sys.getenv("BUILD_VOCABULARIES") == "true") {
    createVocabularies <- TRUE
} else if (Sys.getenv("BUILD_VOCABULARIES") == "FALSE" | Sys.getenv("BUILD_VOCABULARIES") == "false") {
    createVocabularies <- FALSE
} else {
    stop("BUILD_VOCABULARIES is not set to TRUE or FALSE")
}

githubWorkspace <- Sys.getenv("GITHUB_WORKSPACE")
if (is.null(githubWorkspace)) {
    stop("GITHUB_WORKSPACE is not set")
}

#
# Setting environment
#
pathToOMOPVocabularyCSVsFolder <- file.path(githubWorkspace, "input_data/input_omop_vocabulary")
pathToOMOPVocabularyCSVsFolderOutput <- file.path(githubWorkspace, "output_data")
pathToVocabularyFolder <- file.path(githubWorkspace, "VOCABULARIES")
pathToCodeCountsFolder <- file.path(githubWorkspace, "CODE_COUNTS")
validationResultsFolder <- pathToVocabularyFolder
pathToDashboardFolder <- file.path(githubWorkspace, "public")
fileIssueRepo <- "FinOMOP/FinOMOP_mappings"
#
# Run function
#
source("dev/scripts/runAllBase.R")