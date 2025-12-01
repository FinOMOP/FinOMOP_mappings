# LABfi_ALL 1.0.2

- SourceCodes with more than 50 characters are now truncated as: 
   - first 23 characters + ".." + last 23 characters
   - If duplicates padded the sourceConceptId is added to the end of the truncated sourceCode

# LABfi_ALL 1.0.1

- Updated mappings of 1 sourceCodes
- Obsolete mappings can be found in `ADD_INFO:obsolete_conceptId` column of Usagi file

# LABfi_ALL v1.0.0

- Created Finnish lab tests maintained by FinnGen for Kanta registry in FinnGen data.
- Added `ADD_INFO::sourceParents` and `ADD_INFO::sourceParentVocabulary` columns as `NA`
