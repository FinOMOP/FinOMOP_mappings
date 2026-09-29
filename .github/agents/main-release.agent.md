---
# Fill in the fields below to create a basic custom agent for your repository.
# The Copilot CLI can be used for local testing: https://gh.io/customagents/cli
# To make this agent available, merge this file into the default repository branch.
# For format details, see: https://gh.io/customagents/config

name: MainRelease
description: Updates the main NEWS.md looking at each vocabualy NEWS.md  
---

# Main Release NEWS.md Update
1. Look at the diffs between the development branch and the main brach for all the NEWS.md files in each of the vocabularies' folders
2. Use this diffs to create a summary of the changes for each vocabulary since the last main release
3. Update the root NEWS.md file by
   - Bumping the major version
   - Indicate the project update reason given in the issue that triggered this agent
   - For each vocabulary that has an update, a summary of the updates
   - Follow the format in the previous releases in the NEWS.md file 

