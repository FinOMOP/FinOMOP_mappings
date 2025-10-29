# Development

Folder with scripts and notes to help with development.




# Repository Automation

## GitHub Actions Workflows

This repository uses three GitHub Actions workflows for continuous integration and deployment:

### 1. **validateVocabularies** (`.github/workflows/validateVocabularies.yaml`)

**When it runs:**
- On pull requests to the `development` branch
- Only when changes are detected in the `VOCABULARIES/` directory
- Can be manually triggered (workflow_dispatch)

**What happens:**
1. Runs validation on vocabulary files (via `runAllGitHubAction.R`)
2. Updates the branch with the results of the validation
3. Fails the workflow if errors are found (allows SUCCESS or WARNING)

**Purpose:** Automated validation of vocabulary changes before merging to development.

---

### 2. **validateVocabulariesAndDashboard** (`.github/workflows/validateVocabulariesAndDashboard.yaml`)

**When it runs:**
- On pull requests to the `main` branch
- Only when changes are detected in `VOCABULARIES/` or `CODE_COUNTS/` directories
- Can be manually triggered (workflow_dispatch)

**What happens:**
1. Validates vocabularies
2. Test the dashboard build with no errors
3. Fails the workflow if errors are found

**Purpose:** Ensures dashboard builds successfully and vocabularies are valid before merging to main.

---

### 3. **publishDashboardAndVocabularies** (`.github/workflows/publishDashboardAndVocabularies.yaml`)

**When it runs:**
- On push to the `main` or `development` branch
- Can be manually triggered (workflow_dispatch)

**What happens:**
1. Validates vocabularies
1. **Builds both dashboard AND vocabularies** (`BUILD_DASHBOARD: TRUE`, `BUILD_VOCABULARIES: TRUE`)
3. **Deploys dashboard to GitHub Pages** from `./public` directory into 'main' or 'development' folders
4. **Creates a draft prerelease** in `FinOMOP/FinOMOP_vocabularies` repository with the new vocabularies as artifacts (as `FinOMOP_vocabularies.zip`)
6. Fails the workflow if errors are found

**Purpose:** Full deployment pipeline - publishes the dashboard publicly and releases vocabularies for distribution.

---

## Key Secrets Required

- `GITHUB_TOKEN`: Default GitHub Actions token
- `TOKEN_OMOP_VOCABULARIES`: Access to private OMOP vocabularies repository
- `TOKEN_FINOMOP_VOCABULARIES`: Access to create releases in FinOMOP_vocabularies repository

