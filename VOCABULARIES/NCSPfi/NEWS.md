# NCSPfi 1.1.6
Fixed 62-issue-withaa1aa-ncspfi : change the NSCPfi mapping concept with Source code AA1AA from its wrong name CT of head and brain to "Head X-ray examination"

# NCSPfi 1.1.5

- Fixed 2 domain combination errors after update

# NCSPfi 1.1.4

- Updated name of `BA1AE` from `Thyroiid` to `Thyroid`
- Six codes needs further review due to OHDSI vocabulary update

# NCSPfi 1.1.3

- Updated mappings of 113 sourceCodes
- Obsolete mappings can be found in `ADD_INFO:obsolete_conceptId` column of Usagi file

# NCSPfi v1.1.2

- Added `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary` columns using [NCSPfi koodistopalvelu server](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=57)

# NCSPfi v1.1.1

- Added `NA` code with `ADD_INFO:sourceConceptId` 2001306979 which maps to SNOMED concept 37115630

# NCSPfi v1.1.0

- Changed the names of 190 codes with name from FinnGen Code_Set_Compilation_V2.xlsx

# NCSPfi v1.0.0

- Copied from gitlab.tietoriihi.fi where:
  - NCSPfi codes were dowloaded from koodistopalvelu.kanta.fi (27.12.2021)
  - Some English traslations were fixed by FinnGen Translations project 
  - Mappings made by TYKS and TAYS 
