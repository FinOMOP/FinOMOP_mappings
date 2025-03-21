# Vocabularies Validation Status

This is an automatically generated log file by ROMOPMappingTools to detect changes by the github diffs, DO NOT EDIT.

ROMOPMappingTools version: 2.0.0

### Summary

|context              | SUCCESS| WARNING| ERROR|
|:--------------------|-------:|-------:|-----:|
|vocabulary.csv       |       6|       0|     0|
|FHL                  |      22|       1|     0|
|HPN                  |      22|       1|     0|
|ICD8fi               |      22|       1|     0|
|ICD9fi               |      22|       1|     0|
|ICD10fi              |      21|       1|     1|
|LABfi                |      22|       1|     0|
|LABfi_TMP            |      23|       0|     0|
|LABfi_TKU            |      22|       1|     0|
|LABfi_HUS            |      22|       1|     0|
|MEDSPECfi            |      22|       1|     0|
|MICROBEfi            |      22|       1|     0|
|MICROBEfi_TKU        |      22|       1|     0|
|NCSPfi               |      21|       1|     1|
|SNOMED2fi            |      22|       1|     0|
|ProcedureModifier    |      22|       0|     1|
|REIMB                |      22|       1|     0|
|SPAT                 |      22|       1|     0|
|UNITfi               |      23|       0|     0|
|VNRfi                |      22|       1|     0|
|ICPC                 |      22|       1|     0|
|HPO                  |      22|       1|     0|
|ProfessionalCode     |      22|       1|     0|
|FGVisitType          |      22|       1|     0|
|LABfi_ALL            |      22|       1|     0|
|UNITfi_ALL           |      23|       0|     0|
|KantaServiceProvider |      23|       0|     0|

### Full log

|context              |type    |step                                                |message                                                                                                                    |
|:--------------------|:-------|:---------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------|
|vocabulary.csv       |SUCCESS |source_vocabulary_id is not empty                   |                                                                                                                           |
|vocabulary.csv       |SUCCESS |source_vocabulary_id is less than 20 characters     |                                                                                                                           |
|vocabulary.csv       |SUCCESS |source_vocabulary_name is not empty                 |                                                                                                                           |
|vocabulary.csv       |SUCCESS |source_vocabulary_name is less than 255 characters  |                                                                                                                           |
|vocabulary.csv       |SUCCESS |source_concept_id_offset is a number over 2 billion |                                                                                                                           |
|vocabulary.csv       |SUCCESS |source_concept_id_offset is unique                  |                                                                                                                           |
|FHL                  |SUCCESS |Missing default columns                             |                                                                                                                           |
|FHL                  |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|FHL                  |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|FHL                  |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|FHL                  |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|FHL                  |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|FHL                  |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|FHL                  |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|FHL                  |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|FHL                  |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|FHL                  |WARNING |ConceptIds outdated                                 |Found 105 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file  |
|FHL                  |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|FHL                  |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|FHL                  |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|FHL                  |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|FHL                  |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|FHL                  |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|FHL                  |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|FHL                  |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|FHL                  |SUCCESS |Missing date columns                                |                                                                                                                           |
|FHL                  |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|FHL                  |SUCCESS |Missing parent columns                              |                                                                                                                           |
|FHL                  |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|HPN                  |SUCCESS |Missing default columns                             |                                                                                                                           |
|HPN                  |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|HPN                  |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|HPN                  |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|HPN                  |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|HPN                  |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|HPN                  |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|HPN                  |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|HPN                  |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|HPN                  |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|HPN                  |WARNING |ConceptIds outdated                                 |Found 16 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file   |
|HPN                  |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|HPN                  |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|HPN                  |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|HPN                  |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|HPN                  |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|HPN                  |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|HPN                  |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|HPN                  |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|HPN                  |SUCCESS |Missing date columns                                |                                                                                                                           |
|HPN                  |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|HPN                  |SUCCESS |Missing parent columns                              |                                                                                                                           |
|HPN                  |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|ICD8fi               |SUCCESS |Missing default columns                             |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|ICD8fi               |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|ICD8fi               |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|ICD8fi               |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|ICD8fi               |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|ICD8fi               |WARNING |ConceptIds outdated                                 |Found 729 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file  |
|ICD8fi               |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|ICD8fi               |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|ICD8fi               |SUCCESS |Missing date columns                                |                                                                                                                           |
|ICD8fi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|ICD8fi               |SUCCESS |Missing parent columns                              |                                                                                                                           |
|ICD8fi               |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|ICD9fi               |SUCCESS |Missing default columns                             |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|ICD9fi               |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|ICD9fi               |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|ICD9fi               |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|ICD9fi               |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|ICD9fi               |WARNING |ConceptIds outdated                                 |Found 633 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file  |
|ICD9fi               |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|ICD9fi               |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|ICD9fi               |SUCCESS |Missing date columns                                |                                                                                                                           |
|ICD9fi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|ICD9fi               |SUCCESS |Missing parent columns                              |                                                                                                                           |
|ICD9fi               |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|ICD10fi              |SUCCESS |Missing default columns                             |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|ICD10fi              |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|ICD10fi              |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|ICD10fi              |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|ICD10fi              |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|ICD10fi              |WARNING |ConceptIds outdated                                 |Found 41 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file   |
|ICD10fi              |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|ICD10fi              |ERROR   |Invalid domain combination                          |Found 18 codes with invalid domain combinations                                                                            |
|ICD10fi              |SUCCESS |Missing date columns                                |                                                                                                                           |
|ICD10fi              |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|ICD10fi              |SUCCESS |Missing parent columns                              |                                                                                                                           |
|ICD10fi              |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|LABfi                |SUCCESS |Missing default columns                             |                                                                                                                           |
|LABfi                |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|LABfi                |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|LABfi                |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|LABfi                |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|LABfi                |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|LABfi                |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|LABfi                |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|LABfi                |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|LABfi                |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|LABfi                |WARNING |ConceptIds outdated                                 |Found 1 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|LABfi                |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|LABfi                |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|LABfi                |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|LABfi                |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|LABfi                |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|LABfi                |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|LABfi                |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|LABfi                |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|LABfi                |SUCCESS |Missing date columns                                |                                                                                                                           |
|LABfi                |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|LABfi                |SUCCESS |Missing parent columns                              |                                                                                                                           |
|LABfi                |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|LABfi_TMP            |SUCCESS |Missing default columns                             |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|LABfi_TMP            |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|LABfi_TMP            |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|LABfi_TMP            |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|LABfi_TMP            |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|LABfi_TMP            |SUCCESS |ConceptIds outdated                                 |                                                                                                                           |
|LABfi_TMP            |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|LABfi_TMP            |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|LABfi_TMP            |SUCCESS |Missing date columns                                |                                                                                                                           |
|LABfi_TMP            |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|LABfi_TMP            |SUCCESS |Missing parent columns                              |                                                                                                                           |
|LABfi_TMP            |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|LABfi_TKU            |SUCCESS |Missing default columns                             |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|LABfi_TKU            |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|LABfi_TKU            |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|LABfi_TKU            |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|LABfi_TKU            |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|LABfi_TKU            |WARNING |ConceptIds outdated                                 |Found 2 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|LABfi_TKU            |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|LABfi_TKU            |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|LABfi_TKU            |SUCCESS |Missing date columns                                |                                                                                                                           |
|LABfi_TKU            |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|LABfi_TKU            |SUCCESS |Missing parent columns                              |                                                                                                                           |
|LABfi_TKU            |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|LABfi_HUS            |SUCCESS |Missing default columns                             |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|LABfi_HUS            |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|LABfi_HUS            |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|LABfi_HUS            |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|LABfi_HUS            |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|LABfi_HUS            |WARNING |ConceptIds outdated                                 |Found 3 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|LABfi_HUS            |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|LABfi_HUS            |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|LABfi_HUS            |SUCCESS |Missing date columns                                |                                                                                                                           |
|LABfi_HUS            |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|LABfi_HUS            |SUCCESS |Missing parent columns                              |                                                                                                                           |
|LABfi_HUS            |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|MEDSPECfi            |SUCCESS |Missing default columns                             |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|MEDSPECfi            |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|MEDSPECfi            |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|MEDSPECfi            |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|MEDSPECfi            |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|MEDSPECfi            |WARNING |ConceptIds outdated                                 |Found 1 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|MEDSPECfi            |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|MEDSPECfi            |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|MEDSPECfi            |SUCCESS |Missing date columns                                |                                                                                                                           |
|MEDSPECfi            |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|MEDSPECfi            |SUCCESS |Missing parent columns                              |                                                                                                                           |
|MEDSPECfi            |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|MICROBEfi            |SUCCESS |Missing default columns                             |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|MICROBEfi            |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|MICROBEfi            |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|MICROBEfi            |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|MICROBEfi            |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|MICROBEfi            |WARNING |ConceptIds outdated                                 |Found 55 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file   |
|MICROBEfi            |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|MICROBEfi            |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|MICROBEfi            |SUCCESS |Missing date columns                                |                                                                                                                           |
|MICROBEfi            |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|MICROBEfi            |SUCCESS |Missing parent columns                              |                                                                                                                           |
|MICROBEfi            |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |Missing default columns                             |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|MICROBEfi_TKU        |WARNING |ConceptIds outdated                                 |Found 28 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file   |
|MICROBEfi_TKU        |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |Missing date columns                                |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |Missing parent columns                              |                                                                                                                           |
|MICROBEfi_TKU        |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|NCSPfi               |SUCCESS |Missing default columns                             |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|NCSPfi               |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|NCSPfi               |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|NCSPfi               |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|NCSPfi               |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|NCSPfi               |WARNING |ConceptIds outdated                                 |Found 1053 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file |
|NCSPfi               |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|NCSPfi               |ERROR   |Invalid domain combination                          |Found 2 codes with invalid domain combinations                                                                             |
|NCSPfi               |SUCCESS |Missing date columns                                |                                                                                                                           |
|NCSPfi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|NCSPfi               |SUCCESS |Missing parent columns                              |                                                                                                                           |
|NCSPfi               |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|SNOMED2fi            |SUCCESS |Missing default columns                             |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|SNOMED2fi            |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|SNOMED2fi            |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|SNOMED2fi            |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|SNOMED2fi            |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|SNOMED2fi            |WARNING |ConceptIds outdated                                 |Found 174 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file  |
|SNOMED2fi            |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|SNOMED2fi            |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|SNOMED2fi            |SUCCESS |Missing date columns                                |                                                                                                                           |
|SNOMED2fi            |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|SNOMED2fi            |SUCCESS |Missing parent columns                              |                                                                                                                           |
|SNOMED2fi            |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|ProcedureModifier    |SUCCESS |Missing default columns                             |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|ProcedureModifier    |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|ProcedureModifier    |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|ProcedureModifier    |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|ProcedureModifier    |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|ProcedureModifier    |SUCCESS |ConceptIds outdated                                 |                                                                                                                           |
|ProcedureModifier    |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|ProcedureModifier    |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|ProcedureModifier    |SUCCESS |Missing date columns                                |                                                                                                                           |
|ProcedureModifier    |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|ProcedureModifier    |SUCCESS |Missing parent columns                              |                                                                                                                           |
|ProcedureModifier    |ERROR   |Invalid parent concept code                         |Found 3 codes with invalid parent concept codes                                                                            |
|REIMB                |SUCCESS |Missing default columns                             |                                                                                                                           |
|REIMB                |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|REIMB                |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|REIMB                |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|REIMB                |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|REIMB                |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|REIMB                |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|REIMB                |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|REIMB                |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|REIMB                |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|REIMB                |WARNING |ConceptIds outdated                                 |Found 56 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file   |
|REIMB                |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|REIMB                |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|REIMB                |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|REIMB                |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|REIMB                |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|REIMB                |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|REIMB                |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|REIMB                |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|REIMB                |SUCCESS |Missing date columns                                |                                                                                                                           |
|REIMB                |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|REIMB                |SUCCESS |Missing parent columns                              |                                                                                                                           |
|REIMB                |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|SPAT                 |SUCCESS |Missing default columns                             |                                                                                                                           |
|SPAT                 |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|SPAT                 |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|SPAT                 |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|SPAT                 |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|SPAT                 |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|SPAT                 |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|SPAT                 |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|SPAT                 |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|SPAT                 |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|SPAT                 |WARNING |ConceptIds outdated                                 |Found 54 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file   |
|SPAT                 |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|SPAT                 |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|SPAT                 |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|SPAT                 |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|SPAT                 |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|SPAT                 |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|SPAT                 |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|SPAT                 |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|SPAT                 |SUCCESS |Missing date columns                                |                                                                                                                           |
|SPAT                 |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|SPAT                 |SUCCESS |Missing parent columns                              |                                                                                                                           |
|SPAT                 |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|UNITfi               |SUCCESS |Missing default columns                             |                                                                                                                           |
|UNITfi               |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|UNITfi               |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|UNITfi               |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|UNITfi               |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|UNITfi               |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|UNITfi               |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|UNITfi               |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|UNITfi               |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|UNITfi               |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|UNITfi               |SUCCESS |ConceptIds outdated                                 |                                                                                                                           |
|UNITfi               |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|UNITfi               |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|UNITfi               |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|UNITfi               |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|UNITfi               |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|UNITfi               |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|UNITfi               |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|UNITfi               |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|UNITfi               |SUCCESS |Missing date columns                                |                                                                                                                           |
|UNITfi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|UNITfi               |SUCCESS |Missing parent columns                              |                                                                                                                           |
|UNITfi               |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|VNRfi                |SUCCESS |Missing default columns                             |                                                                                                                           |
|VNRfi                |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|VNRfi                |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|VNRfi                |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|VNRfi                |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|VNRfi                |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|VNRfi                |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|VNRfi                |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|VNRfi                |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|VNRfi                |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|VNRfi                |WARNING |ConceptIds outdated                                 |Found 5 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|VNRfi                |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|VNRfi                |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|VNRfi                |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|VNRfi                |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|VNRfi                |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|VNRfi                |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|VNRfi                |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|VNRfi                |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|VNRfi                |SUCCESS |Missing date columns                                |                                                                                                                           |
|VNRfi                |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|VNRfi                |SUCCESS |Missing parent columns                              |                                                                                                                           |
|VNRfi                |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|ICPC                 |SUCCESS |Missing default columns                             |                                                                                                                           |
|ICPC                 |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|ICPC                 |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|ICPC                 |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|ICPC                 |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|ICPC                 |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|ICPC                 |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|ICPC                 |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|ICPC                 |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|ICPC                 |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|ICPC                 |WARNING |ConceptIds outdated                                 |Found 5 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|ICPC                 |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|ICPC                 |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|ICPC                 |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|ICPC                 |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|ICPC                 |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|ICPC                 |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|ICPC                 |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|ICPC                 |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|ICPC                 |SUCCESS |Missing date columns                                |                                                                                                                           |
|ICPC                 |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|ICPC                 |SUCCESS |Missing parent columns                              |                                                                                                                           |
|ICPC                 |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|HPO                  |SUCCESS |Missing default columns                             |                                                                                                                           |
|HPO                  |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|HPO                  |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|HPO                  |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|HPO                  |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|HPO                  |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|HPO                  |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|HPO                  |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|HPO                  |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|HPO                  |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|HPO                  |WARNING |ConceptIds outdated                                 |Found 7 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|HPO                  |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|HPO                  |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|HPO                  |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|HPO                  |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|HPO                  |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|HPO                  |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|HPO                  |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|HPO                  |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|HPO                  |SUCCESS |Missing date columns                                |                                                                                                                           |
|HPO                  |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|HPO                  |SUCCESS |Missing parent columns                              |                                                                                                                           |
|HPO                  |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|ProfessionalCode     |SUCCESS |Missing default columns                             |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|ProfessionalCode     |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|ProfessionalCode     |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|ProfessionalCode     |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|ProfessionalCode     |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|ProfessionalCode     |WARNING |ConceptIds outdated                                 |Found 39 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file   |
|ProfessionalCode     |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|ProfessionalCode     |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|ProfessionalCode     |SUCCESS |Missing date columns                                |                                                                                                                           |
|ProfessionalCode     |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|ProfessionalCode     |SUCCESS |Missing parent columns                              |                                                                                                                           |
|ProfessionalCode     |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|FGVisitType          |SUCCESS |Missing default columns                             |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|FGVisitType          |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|FGVisitType          |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|FGVisitType          |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|FGVisitType          |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|FGVisitType          |WARNING |ConceptIds outdated                                 |Found 109 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file  |
|FGVisitType          |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|FGVisitType          |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|FGVisitType          |SUCCESS |Missing date columns                                |                                                                                                                           |
|FGVisitType          |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|FGVisitType          |SUCCESS |Missing parent columns                              |                                                                                                                           |
|FGVisitType          |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|LABfi_ALL            |SUCCESS |Missing default columns                             |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|LABfi_ALL            |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|LABfi_ALL            |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|LABfi_ALL            |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|LABfi_ALL            |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|LABfi_ALL            |WARNING |ConceptIds outdated                                 |Found 5 sourceCodes with conceptIds that are outdated. Use ROMOPMappingTool::updateUsagiFile() to update the usagi file    |
|LABfi_ALL            |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|LABfi_ALL            |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|LABfi_ALL            |SUCCESS |Missing date columns                                |                                                                                                                           |
|LABfi_ALL            |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|LABfi_ALL            |SUCCESS |Missing parent columns                              |                                                                                                                           |
|LABfi_ALL            |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |Missing default columns                             |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |ConceptIds outdated                                 |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |Missing date columns                                |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |Missing parent columns                              |                                                                                                                           |
|UNITfi_ALL           |SUCCESS |Invalid parent concept code                         |                                                                                                                           |
|KantaServiceProvider |SUCCESS |Missing default columns                             |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceCode is empty                                 |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceCode and conceptId are not unique             |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceName is empty                                 |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceName is more than 255 characters              |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceFrequency is not empty                        |                                                                                                                           |
|KantaServiceProvider |SUCCESS |MappingStatus is empty                              |                                                                                                                           |
|KantaServiceProvider |SUCCESS |MappingStatus is one of the following               |                                                                                                                           |
|KantaServiceProvider |SUCCESS |Concept_id is 0 for APPROVED mappingStatus          |                                                                                                                           |
|KantaServiceProvider |SUCCESS |ConceptIds not in vocabularies                      |                                                                                                                           |
|KantaServiceProvider |SUCCESS |ConceptIds outdated                                 |                                                                                                                           |
|KantaServiceProvider |SUCCESS |Missing C&CR columns                                |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceConceptId is empty                            |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceConceptId is not a number on the range        |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceConceptClass is empty                         |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceConceptClass is more than 20 characters       |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceDomain is empty                               |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceDomain is not a valid domain                  |                                                                                                                           |
|KantaServiceProvider |SUCCESS |Invalid domain combination                          |                                                                                                                           |
|KantaServiceProvider |SUCCESS |Missing date columns                                |                                                                                                                           |
|KantaServiceProvider |SUCCESS |SourceValidStartDate is after SourceValidEndDate    |                                                                                                                           |
|KantaServiceProvider |SUCCESS |Missing parent columns                              |                                                                                                                           |
|KantaServiceProvider |SUCCESS |Invalid parent concept code                         |                                                                                                                           |


