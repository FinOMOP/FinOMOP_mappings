# ICD10fi 1.1.3
- Made manual fixes for "Auto-remapped as poss_eq. Needs review." cases
- Six codes have conflicting domain combinations needs further review
 
# ICD10fi 1.1.2

- Updated mappings of 91 sourceCodes
- Obsolete mappings can be found in `ADD_INFO:obsolete_conceptId` column of Usagi file

# ICD10fi v1.1.1

- Added two ICD10fi SubChapter codes
- Added `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary` columns using [THL ICD-10 koodistopalvelu server](https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml?classificationKey=23)
- Parents for most of the codes are from ICD-10 vocabulary therefore `ADD_INFO:sourceParentVocabulary` will not be `NA`

# ICD10fi v1.1.0

- The mappings have been updated with the mappings reviewed in HUS in 2022, see [update_notes_v1.1.0](notes/update_notes_v1.1.0.md).

# ICD10fi v1.0.0

- Brought from old FinOMOP "Tietoriihi" GitLab with some minor fixes.
- Mappings of 12 of the codes fixed in 2023-03.
