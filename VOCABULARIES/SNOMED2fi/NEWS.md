# SNOMED2fi 1.0.4

- One code had approval removed as it was incorrectly marked as approved to concept 0
- One code had duplicate mapped standard concepts and one of older mapping is removed

# SNOMED2fi 1.0.3

- Updated all mappings where the domain of the target concept had been changed to Spec Anatomic Site by OHDSI's recent vocabulary release update
- Now no codes are  mapped to the Spec Anatomic Site domain
- Updated mappings that were made to the domain combination Condition + Meas Value. They are now to Condition + Observation.
- Also changed one mapping from target combination Measurement+Observation to Measurement due to current vocabulary process technical requirements
- Added some detail to mappings of endocervix and exocervix concepts
- Marked some mappings as Approved that had previously been Unchecked


# SNOMED2fi 1.0.2

- Updated mappings of 53 sourceCodes
- Obsolete mappings can be found in `ADD_INFO:obsolete_conceptId` column of Usagi file

# SNOMED2fi v1.0.1

- Added `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary` columns
- No parent information is present

# SNOMED2fi v1.0.0

- Copied from old FinOMOP "Tietoriihi" GitLab
