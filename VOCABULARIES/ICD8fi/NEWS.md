# ICD8fi 1.1.2

- Removed Spec Anatomic Site domain mapping to the code `55100`

# ICD8fi 1.1.1

- Updated mappings of 65 sourceCodes
- Obsolete mappings can be found in `ADD_INFO:obsolete_conceptId` column of Usagi file

# ICD8fi v1.1.0

- Around 1979 `ICD8fi` concepts are mapped
- Prioritized concepts that are present in FinnGen

# ICD8fi v1.0.2

- Added `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary` columns
- For "ICD8fi Chapter", the parent is NULL.
- For "ICD8fi SubChapter", it finds all "ICD8fi Chapter" ranges that contain the "ICD8fi SubChapter" range.
- For "3-char ICD8fi" it finds all "ICD8fi SubChapter" ranges that contain the code.
- For "4-char ICD8fi" it looks for first 3 characters in  all "3-char ICD8fi" codes that match. If no "3-char ICD8fi" code is found then    it finds all "ICD8fi SubChapter" ranges that contain the code
- For "5-char ICD8fi", it first looks for all "4-char ICD8fi" codes and then for "3-char ICD8fi" codes if no "4-char ICD8fi" code is        found.
- Given all the `ADD_INFO:sourceParents` codes are present in ICD8fi then `ADD_INFO:sourceParentVocabulary` is NULL

# ICD8fi v1.0.1

- Added chapter and subchapter codes

# ICD8fi v1.0.0

- Copied from gitlab.tietoriihi.fi
