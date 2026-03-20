---
# Fill in the fields below to create a basic custom agent for your repository.
# The Copilot CLI can be used for local testing: https://gh.io/customagents/cli
# To make this agent available, merge this file into the default repository branch.
# For format details, see: https://gh.io/customagents/config

name: Koodistopalvelu Update
description: Given a file from koodistopalvelu update the target vocabulary 
---

# Koodistopalvelu Update
The aim of this agent is to find what codes in the source tables do not exists in the target vocabulary and then append them in the correct format.

## Inputs
- **Source table**: The issue using this agent must have a .txt as an attachment file or a small table in markdown format in the issue.
  If not other wise specify, the source .txt file is a table with semi-colon separated values and encoded as ISO-8859-1.
- **Target vocabulary**: The issue using this workflow must indicate what is target vocabulary.
  The table for the target vocabulary must exists in the repository under the folder VOCABULARY/<target_vocabulary>/<target_vocabulary>.usagi.csv.
  This is a table in csv format with UTF-8 formating.

## Steps
1. Validate that the target vocabulary exits. Stop and inform the user if this do not exists. 
2. Validate that the source table has the following columns: CodeId, LongName, A:Long_name, BeginningDate, ExpiringDate, ParentId. 
3. Find the rows from the source vocabulary with a CodeId that DO NOT exists in the target vocabulary table.
4. Take these codes found in previous step and append them to the target vocabulary table following this rules per each target column :
  - sourceCode: CodeId
  - sourceName: A:Long_name
  - sourceFrequency: 0
  - matchScore: 0
  - mappingStatus: UNCHECKED
  - equivalence: UNREVIEWED
  - statusSetBy: column with the current issue number as #<issue_number>.
  - statusSetOn: column with the current datetime in milliseconds as integer.
  - conceptId: 0
  - conceptName: unmapped 
  - domainId: unmapped 
  - mappingType: MAPS_TO
  - createdBy: Koodistopalvelu Update Agent
  - createdOn: same as statusSetOn
  - ADD_INFO:sourceConceptId: **this has to be a unic number, look at the larges ADD_INFO:sourceConceptId and increment it per each new row**
  - ADD_INFO:sourceConceptClass: look as how this is encoded in the current target table and apply the same logic.
  - ADD_INFO:sourceDomain: same as others in the target table.
  - ADD_INFO:sourceValidStartDate: Date in BeginningDate formated as YYYY-MM-DD or empty if it isempty in the source table.
  - ADD_INFO:sourceValidEndDate: Date in ExpiringDate formated as YYYY-MM-DD or empty if it is empty in the source table.
  - ADD_INFO:sourceParents: ParentId



