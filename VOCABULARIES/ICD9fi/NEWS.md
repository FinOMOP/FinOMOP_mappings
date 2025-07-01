# ICD9fi 1.0.5

- Fixed error: Correct mappings were in sourceAutoAssignedConceptIds column, had to be moved to conceptId column

# ICD9fi 1.0.4

- Removed SNOMED non-standard Measurement mapping for code `7942A`

# ICD9fi 1.0.3

- Updated mappings of 528 sourceCodes
- Obsolete mappings can be found in `ADD_INFO:obsolete_conceptId` column of Usagi file

# ICD9fi v1.0.2

- Added missing 4-char ICD9fi codes starting with letter E
- Added missing 3-char ICD9fi codes starting with letter V
- Added `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary` columns
- For "ICD9fi Chapter", the parent is NULL.
- For "ICD9fi SubChapter", it finds all "ICD9fi Chapter" ranges that contain the "ICD9fi SubChapter" range.
- For "3-char ICD9fi" or "4-char ICD9fi" it finds all "ICD9fi SubChapter" ranges that contain the code.
- For "5-char ICD9fi", it first looks for all "4-char ICD9fi" codes and then for "3-char ICD9fi" codes if no "4-char ICD9fi" code is found.
- `ADD_INFO:sourceParentVocabulary` column will be NA as all the codes in `ADD_INFO:sourceParents` are present in ICD9fi

# ICD9fi v1.0.1

- Added chapter and subchapter codes

# ICD9fi v1.0.0

- Copied from gitlab.tietoriihi.fi
