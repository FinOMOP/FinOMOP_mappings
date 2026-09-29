---
# Fill in the fields below to create a basic custom agent for your repository.
# The Copilot CLI can be used for local testing: https://gh.io/customagents/cli
# To make this agent available, merge this file into the default repository branch.
# For format details, see: https://gh.io/customagents/config

name: MainRelease
description: Updates the main NEWS.md looking at each vocabualy NEWS.md  
---

# Main Release NEWS.md Update
1. Look at the diffs between the development branch and the main brach for all the NEWS.md files in each of the vocabularies' folders (this will be used for the "Manual Changes" section)
2. Look at the diffs between the development branch and the main brach for all the usagi.csv files in each of the vocabularies' folders (if the diff is too big ignore) (this will be used for the "Automatic Changes" section)
3. Look at the diffs between the development branch and the main brach for VOCABULARIES/VOCABULARIES_LAST_AUTOMATIC_UPDATE_STATUS.md, for each vocabulary in this table check how many WARNINGS with "remapping needed" have changed the number of conceptIds (this will be used for the "Mappings lost due to the update" section)
4. Use this diffs to create a summary of the changes for each vocabulary since the last main release
5. Update the root NEWS.md file by
   - Bumping the major version
   - Indicate the project update reason given in the issue that triggered this agent
   - Make sub section ## Manual Changes: with one bullet point per each vocabulary that has an updated NEWS.md file, summarise the changes in one line per vocabulary
   - Make sub section ## Automatic Changes: with one bullet point for each vocabulary that has changes in the usagi.csv not descrived in the "Manual Changes" section,  summarise the changes in one line per vocabulary
   - Make sub section ## ⚠️ "Mappings lost due to the update ⚠️:" this shows the number of changed conceptIds per vocabulary if they have changed in this release.
  
Example of a release, only for reference porpoises do not use as it is. 
```
# v5.0.0
- Reason for the update: Updated Athena vocabulary August 2026
## Manual Changes:
- SPAT: Added 5 new SPAT codes (SPAT1416–SPAT1420) from koodistopalvelu update
- UNITfi: Minor fixes for FinnGen DF14
- VNRfi: Added 239 new drugs, out of which 89 have been mapped; introduced dummy VNRs from 20 million range; Dummy vaccination VNRs between 20000000 and 20000096 were mapped to ATC concept id
- ...
## Automatic Changes:
- FHL: Updated 5 concept IDs and 10 concept names
- ICD9fi: Updated 31 concept IDs, 13 concept IDs for review, 15 domains and 144 concept names
- ICD10fi: Updated 26 concept IDs, 15 domains and 125 concept names
- ...
## ⚠️ Mappings lost due to the update ⚠️:
- **ICD8fi (16), ICD9fi (13), ICD10fi (5), MICROBEfi (2), NCSPfi (34), SNOMED2fi (114), SPAT (1), HPO (1), ...**
```
