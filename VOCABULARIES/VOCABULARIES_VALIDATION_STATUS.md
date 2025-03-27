# Vocabularies Validation Status

This is an automatically generated log file by ROMOPMappingTools to detect changes by the github diffs, DO NOT EDIT.

ROMOPMappingTools version: 2.0.0

### Summary

|context              | SUCCESS| WARNING| ERROR|
|:--------------------|-------:|-------:|-----:|
|vocabulary.csv       |       6|       0|     0|
|FHL                  |      24|       0|     0|
|HPN                  |      24|       0|     0|
|ICD8fi               |      23|       1|     0|
|ICD9fi               |      23|       1|     0|
|ICD10fi              |      23|       1|     0|
|LABfi                |      24|       0|     0|
|LABfi_TMP            |      24|       0|     0|
|LABfi_TKU            |      24|       0|     0|
|LABfi_HUS            |      24|       0|     0|
|MEDSPECfi            |      24|       0|     0|
|MICROBEfi            |      24|       0|     0|
|MICROBEfi_TKU        |      24|       0|     0|
|NCSPfi               |      22|       2|     0|
|SNOMED2fi            |      23|       1|     0|
|ProcedureModifier    |      24|       0|     0|
|REIMB                |      24|       0|     0|
|SPAT                 |      24|       0|     0|
|UNITfi               |      24|       0|     0|
|VNRfi                |      24|       0|     0|
|ICPC                 |      24|       0|     0|
|HPO                  |      24|       0|     0|
|ProfessionalCode     |      24|       0|     0|
|FGVisitType          |      24|       0|     0|
|LABfi_ALL            |      24|       0|     0|
|UNITfi_ALL           |      24|       0|     0|
|KantaServiceProvider |      24|       0|     0|

### Full log

|context              |type    |step                                                     |message                                          |
|:--------------------|:-------|:--------------------------------------------------------|:------------------------------------------------|
|vocabulary.csv       |SUCCESS |source_vocabulary_id is not empty                        |                                                 |
|vocabulary.csv       |SUCCESS |source_vocabulary_id is less than 20 characters          |                                                 |
|vocabulary.csv       |SUCCESS |source_vocabulary_name is not empty                      |                                                 |
|vocabulary.csv       |SUCCESS |source_vocabulary_name is less than 255 characters       |                                                 |
|vocabulary.csv       |SUCCESS |source_concept_id_offset is a number over 2 billion      |                                                 |
|vocabulary.csv       |SUCCESS |source_concept_id_offset is unique                       |                                                 |
|FHL                  |SUCCESS |Missing default columns                                  |                                                 |
|FHL                  |SUCCESS |SourceCode is empty                                      |                                                 |
|FHL                  |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|FHL                  |SUCCESS |SourceName is empty                                      |                                                 |
|FHL                  |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|FHL                  |SUCCESS |SourceFrequency is not empty                             |                                                 |
|FHL                  |SUCCESS |MappingStatus is empty                                   |                                                 |
|FHL                  |SUCCESS |MappingStatus is not valid                               |                                                 |
|FHL                  |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|FHL                  |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|FHL                  |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|FHL                  |SUCCESS |Missing C&CR columns                                     |                                                 |
|FHL                  |SUCCESS |SourceConceptId is empty                                 |                                                 |
|FHL                  |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|FHL                  |SUCCESS |SourceConceptClass is empty                              |                                                 |
|FHL                  |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|FHL                  |SUCCESS |SourceDomain is empty                                    |                                                 |
|FHL                  |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|FHL                  |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|FHL                  |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|FHL                  |SUCCESS |Missing date columns                                     |                                                 |
|FHL                  |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|FHL                  |SUCCESS |Missing parent columns                                   |                                                 |
|FHL                  |SUCCESS |Invalid parent concept code                              |                                                 |
|HPN                  |SUCCESS |Missing default columns                                  |                                                 |
|HPN                  |SUCCESS |SourceCode is empty                                      |                                                 |
|HPN                  |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|HPN                  |SUCCESS |SourceName is empty                                      |                                                 |
|HPN                  |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|HPN                  |SUCCESS |SourceFrequency is not empty                             |                                                 |
|HPN                  |SUCCESS |MappingStatus is empty                                   |                                                 |
|HPN                  |SUCCESS |MappingStatus is not valid                               |                                                 |
|HPN                  |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|HPN                  |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|HPN                  |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|HPN                  |SUCCESS |Missing C&CR columns                                     |                                                 |
|HPN                  |SUCCESS |SourceConceptId is empty                                 |                                                 |
|HPN                  |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|HPN                  |SUCCESS |SourceConceptClass is empty                              |                                                 |
|HPN                  |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|HPN                  |SUCCESS |SourceDomain is empty                                    |                                                 |
|HPN                  |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|HPN                  |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|HPN                  |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|HPN                  |SUCCESS |Missing date columns                                     |                                                 |
|HPN                  |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|HPN                  |SUCCESS |Missing parent columns                                   |                                                 |
|HPN                  |SUCCESS |Invalid parent concept code                              |                                                 |
|ICD8fi               |SUCCESS |Missing default columns                                  |                                                 |
|ICD8fi               |SUCCESS |SourceCode is empty                                      |                                                 |
|ICD8fi               |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|ICD8fi               |SUCCESS |SourceName is empty                                      |                                                 |
|ICD8fi               |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|ICD8fi               |SUCCESS |SourceFrequency is not empty                             |                                                 |
|ICD8fi               |SUCCESS |MappingStatus is empty                                   |                                                 |
|ICD8fi               |SUCCESS |MappingStatus is not valid                               |                                                 |
|ICD8fi               |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|ICD8fi               |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|ICD8fi               |WARNING |Not APPROVED mappingStatus with concepts outdated        |11 standardConcepts have changed to non-standard |
|ICD8fi               |SUCCESS |Missing C&CR columns                                     |                                                 |
|ICD8fi               |SUCCESS |SourceConceptId is empty                                 |                                                 |
|ICD8fi               |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|ICD8fi               |SUCCESS |SourceConceptClass is empty                              |                                                 |
|ICD8fi               |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|ICD8fi               |SUCCESS |SourceDomain is empty                                    |                                                 |
|ICD8fi               |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|ICD8fi               |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|ICD8fi               |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|ICD8fi               |SUCCESS |Missing date columns                                     |                                                 |
|ICD8fi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|ICD8fi               |SUCCESS |Missing parent columns                                   |                                                 |
|ICD8fi               |SUCCESS |Invalid parent concept code                              |                                                 |
|ICD9fi               |SUCCESS |Missing default columns                                  |                                                 |
|ICD9fi               |SUCCESS |SourceCode is empty                                      |                                                 |
|ICD9fi               |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|ICD9fi               |SUCCESS |SourceName is empty                                      |                                                 |
|ICD9fi               |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|ICD9fi               |SUCCESS |SourceFrequency is not empty                             |                                                 |
|ICD9fi               |SUCCESS |MappingStatus is empty                                   |                                                 |
|ICD9fi               |SUCCESS |MappingStatus is not valid                               |                                                 |
|ICD9fi               |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|ICD9fi               |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|ICD9fi               |WARNING |Not APPROVED mappingStatus with concepts outdated        |12 standardConcepts have changed to non-standard |
|ICD9fi               |SUCCESS |Missing C&CR columns                                     |                                                 |
|ICD9fi               |SUCCESS |SourceConceptId is empty                                 |                                                 |
|ICD9fi               |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|ICD9fi               |SUCCESS |SourceConceptClass is empty                              |                                                 |
|ICD9fi               |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|ICD9fi               |SUCCESS |SourceDomain is empty                                    |                                                 |
|ICD9fi               |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|ICD9fi               |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|ICD9fi               |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|ICD9fi               |SUCCESS |Missing date columns                                     |                                                 |
|ICD9fi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|ICD9fi               |SUCCESS |Missing parent columns                                   |                                                 |
|ICD9fi               |SUCCESS |Invalid parent concept code                              |                                                 |
|ICD10fi              |SUCCESS |Missing default columns                                  |                                                 |
|ICD10fi              |SUCCESS |SourceCode is empty                                      |                                                 |
|ICD10fi              |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|ICD10fi              |SUCCESS |SourceName is empty                                      |                                                 |
|ICD10fi              |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|ICD10fi              |SUCCESS |SourceFrequency is not empty                             |                                                 |
|ICD10fi              |SUCCESS |MappingStatus is empty                                   |                                                 |
|ICD10fi              |SUCCESS |MappingStatus is not valid                               |                                                 |
|ICD10fi              |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|ICD10fi              |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|ICD10fi              |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|ICD10fi              |SUCCESS |Missing C&CR columns                                     |                                                 |
|ICD10fi              |SUCCESS |SourceConceptId is empty                                 |                                                 |
|ICD10fi              |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|ICD10fi              |SUCCESS |SourceConceptClass is empty                              |                                                 |
|ICD10fi              |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|ICD10fi              |SUCCESS |SourceDomain is empty                                    |                                                 |
|ICD10fi              |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|ICD10fi              |WARNING |Not APPROVED mappingStatus with valid domain combination |Found 6 codes with invalid domain combinations   |
|ICD10fi              |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|ICD10fi              |SUCCESS |Missing date columns                                     |                                                 |
|ICD10fi              |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|ICD10fi              |SUCCESS |Missing parent columns                                   |                                                 |
|ICD10fi              |SUCCESS |Invalid parent concept code                              |                                                 |
|LABfi                |SUCCESS |Missing default columns                                  |                                                 |
|LABfi                |SUCCESS |SourceCode is empty                                      |                                                 |
|LABfi                |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|LABfi                |SUCCESS |SourceName is empty                                      |                                                 |
|LABfi                |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|LABfi                |SUCCESS |SourceFrequency is not empty                             |                                                 |
|LABfi                |SUCCESS |MappingStatus is empty                                   |                                                 |
|LABfi                |SUCCESS |MappingStatus is not valid                               |                                                 |
|LABfi                |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|LABfi                |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|LABfi                |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|LABfi                |SUCCESS |Missing C&CR columns                                     |                                                 |
|LABfi                |SUCCESS |SourceConceptId is empty                                 |                                                 |
|LABfi                |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|LABfi                |SUCCESS |SourceConceptClass is empty                              |                                                 |
|LABfi                |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|LABfi                |SUCCESS |SourceDomain is empty                                    |                                                 |
|LABfi                |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|LABfi                |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|LABfi                |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|LABfi                |SUCCESS |Missing date columns                                     |                                                 |
|LABfi                |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|LABfi                |SUCCESS |Missing parent columns                                   |                                                 |
|LABfi                |SUCCESS |Invalid parent concept code                              |                                                 |
|LABfi_TMP            |SUCCESS |Missing default columns                                  |                                                 |
|LABfi_TMP            |SUCCESS |SourceCode is empty                                      |                                                 |
|LABfi_TMP            |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|LABfi_TMP            |SUCCESS |SourceName is empty                                      |                                                 |
|LABfi_TMP            |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|LABfi_TMP            |SUCCESS |SourceFrequency is not empty                             |                                                 |
|LABfi_TMP            |SUCCESS |MappingStatus is empty                                   |                                                 |
|LABfi_TMP            |SUCCESS |MappingStatus is not valid                               |                                                 |
|LABfi_TMP            |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|LABfi_TMP            |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|LABfi_TMP            |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|LABfi_TMP            |SUCCESS |Missing C&CR columns                                     |                                                 |
|LABfi_TMP            |SUCCESS |SourceConceptId is empty                                 |                                                 |
|LABfi_TMP            |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|LABfi_TMP            |SUCCESS |SourceConceptClass is empty                              |                                                 |
|LABfi_TMP            |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|LABfi_TMP            |SUCCESS |SourceDomain is empty                                    |                                                 |
|LABfi_TMP            |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|LABfi_TMP            |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|LABfi_TMP            |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|LABfi_TMP            |SUCCESS |Missing date columns                                     |                                                 |
|LABfi_TMP            |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|LABfi_TMP            |SUCCESS |Missing parent columns                                   |                                                 |
|LABfi_TMP            |SUCCESS |Invalid parent concept code                              |                                                 |
|LABfi_TKU            |SUCCESS |Missing default columns                                  |                                                 |
|LABfi_TKU            |SUCCESS |SourceCode is empty                                      |                                                 |
|LABfi_TKU            |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|LABfi_TKU            |SUCCESS |SourceName is empty                                      |                                                 |
|LABfi_TKU            |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|LABfi_TKU            |SUCCESS |SourceFrequency is not empty                             |                                                 |
|LABfi_TKU            |SUCCESS |MappingStatus is empty                                   |                                                 |
|LABfi_TKU            |SUCCESS |MappingStatus is not valid                               |                                                 |
|LABfi_TKU            |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|LABfi_TKU            |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|LABfi_TKU            |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|LABfi_TKU            |SUCCESS |Missing C&CR columns                                     |                                                 |
|LABfi_TKU            |SUCCESS |SourceConceptId is empty                                 |                                                 |
|LABfi_TKU            |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|LABfi_TKU            |SUCCESS |SourceConceptClass is empty                              |                                                 |
|LABfi_TKU            |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|LABfi_TKU            |SUCCESS |SourceDomain is empty                                    |                                                 |
|LABfi_TKU            |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|LABfi_TKU            |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|LABfi_TKU            |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|LABfi_TKU            |SUCCESS |Missing date columns                                     |                                                 |
|LABfi_TKU            |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|LABfi_TKU            |SUCCESS |Missing parent columns                                   |                                                 |
|LABfi_TKU            |SUCCESS |Invalid parent concept code                              |                                                 |
|LABfi_HUS            |SUCCESS |Missing default columns                                  |                                                 |
|LABfi_HUS            |SUCCESS |SourceCode is empty                                      |                                                 |
|LABfi_HUS            |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|LABfi_HUS            |SUCCESS |SourceName is empty                                      |                                                 |
|LABfi_HUS            |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|LABfi_HUS            |SUCCESS |SourceFrequency is not empty                             |                                                 |
|LABfi_HUS            |SUCCESS |MappingStatus is empty                                   |                                                 |
|LABfi_HUS            |SUCCESS |MappingStatus is not valid                               |                                                 |
|LABfi_HUS            |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|LABfi_HUS            |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|LABfi_HUS            |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|LABfi_HUS            |SUCCESS |Missing C&CR columns                                     |                                                 |
|LABfi_HUS            |SUCCESS |SourceConceptId is empty                                 |                                                 |
|LABfi_HUS            |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|LABfi_HUS            |SUCCESS |SourceConceptClass is empty                              |                                                 |
|LABfi_HUS            |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|LABfi_HUS            |SUCCESS |SourceDomain is empty                                    |                                                 |
|LABfi_HUS            |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|LABfi_HUS            |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|LABfi_HUS            |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|LABfi_HUS            |SUCCESS |Missing date columns                                     |                                                 |
|LABfi_HUS            |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|LABfi_HUS            |SUCCESS |Missing parent columns                                   |                                                 |
|LABfi_HUS            |SUCCESS |Invalid parent concept code                              |                                                 |
|MEDSPECfi            |SUCCESS |Missing default columns                                  |                                                 |
|MEDSPECfi            |SUCCESS |SourceCode is empty                                      |                                                 |
|MEDSPECfi            |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|MEDSPECfi            |SUCCESS |SourceName is empty                                      |                                                 |
|MEDSPECfi            |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|MEDSPECfi            |SUCCESS |SourceFrequency is not empty                             |                                                 |
|MEDSPECfi            |SUCCESS |MappingStatus is empty                                   |                                                 |
|MEDSPECfi            |SUCCESS |MappingStatus is not valid                               |                                                 |
|MEDSPECfi            |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|MEDSPECfi            |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|MEDSPECfi            |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|MEDSPECfi            |SUCCESS |Missing C&CR columns                                     |                                                 |
|MEDSPECfi            |SUCCESS |SourceConceptId is empty                                 |                                                 |
|MEDSPECfi            |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|MEDSPECfi            |SUCCESS |SourceConceptClass is empty                              |                                                 |
|MEDSPECfi            |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|MEDSPECfi            |SUCCESS |SourceDomain is empty                                    |                                                 |
|MEDSPECfi            |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|MEDSPECfi            |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|MEDSPECfi            |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|MEDSPECfi            |SUCCESS |Missing date columns                                     |                                                 |
|MEDSPECfi            |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|MEDSPECfi            |SUCCESS |Missing parent columns                                   |                                                 |
|MEDSPECfi            |SUCCESS |Invalid parent concept code                              |                                                 |
|MICROBEfi            |SUCCESS |Missing default columns                                  |                                                 |
|MICROBEfi            |SUCCESS |SourceCode is empty                                      |                                                 |
|MICROBEfi            |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|MICROBEfi            |SUCCESS |SourceName is empty                                      |                                                 |
|MICROBEfi            |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|MICROBEfi            |SUCCESS |SourceFrequency is not empty                             |                                                 |
|MICROBEfi            |SUCCESS |MappingStatus is empty                                   |                                                 |
|MICROBEfi            |SUCCESS |MappingStatus is not valid                               |                                                 |
|MICROBEfi            |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|MICROBEfi            |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|MICROBEfi            |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|MICROBEfi            |SUCCESS |Missing C&CR columns                                     |                                                 |
|MICROBEfi            |SUCCESS |SourceConceptId is empty                                 |                                                 |
|MICROBEfi            |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|MICROBEfi            |SUCCESS |SourceConceptClass is empty                              |                                                 |
|MICROBEfi            |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|MICROBEfi            |SUCCESS |SourceDomain is empty                                    |                                                 |
|MICROBEfi            |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|MICROBEfi            |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|MICROBEfi            |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|MICROBEfi            |SUCCESS |Missing date columns                                     |                                                 |
|MICROBEfi            |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|MICROBEfi            |SUCCESS |Missing parent columns                                   |                                                 |
|MICROBEfi            |SUCCESS |Invalid parent concept code                              |                                                 |
|MICROBEfi_TKU        |SUCCESS |Missing default columns                                  |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceCode is empty                                      |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceName is empty                                      |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceFrequency is not empty                             |                                                 |
|MICROBEfi_TKU        |SUCCESS |MappingStatus is empty                                   |                                                 |
|MICROBEfi_TKU        |SUCCESS |MappingStatus is not valid                               |                                                 |
|MICROBEfi_TKU        |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|MICROBEfi_TKU        |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|MICROBEfi_TKU        |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|MICROBEfi_TKU        |SUCCESS |Missing C&CR columns                                     |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceConceptId is empty                                 |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceConceptClass is empty                              |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceDomain is empty                                    |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|MICROBEfi_TKU        |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|MICROBEfi_TKU        |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|MICROBEfi_TKU        |SUCCESS |Missing date columns                                     |                                                 |
|MICROBEfi_TKU        |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|MICROBEfi_TKU        |SUCCESS |Missing parent columns                                   |                                                 |
|MICROBEfi_TKU        |SUCCESS |Invalid parent concept code                              |                                                 |
|NCSPfi               |SUCCESS |Missing default columns                                  |                                                 |
|NCSPfi               |SUCCESS |SourceCode is empty                                      |                                                 |
|NCSPfi               |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|NCSPfi               |SUCCESS |SourceName is empty                                      |                                                 |
|NCSPfi               |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|NCSPfi               |SUCCESS |SourceFrequency is not empty                             |                                                 |
|NCSPfi               |SUCCESS |MappingStatus is empty                                   |                                                 |
|NCSPfi               |SUCCESS |MappingStatus is not valid                               |                                                 |
|NCSPfi               |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|NCSPfi               |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|NCSPfi               |WARNING |Not APPROVED mappingStatus with concepts outdated        |3 conceptNames are outdated                      |
|NCSPfi               |SUCCESS |Missing C&CR columns                                     |                                                 |
|NCSPfi               |SUCCESS |SourceConceptId is empty                                 |                                                 |
|NCSPfi               |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|NCSPfi               |SUCCESS |SourceConceptClass is empty                              |                                                 |
|NCSPfi               |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|NCSPfi               |SUCCESS |SourceDomain is empty                                    |                                                 |
|NCSPfi               |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|NCSPfi               |WARNING |Not APPROVED mappingStatus with valid domain combination |Found 2 codes with invalid domain combinations   |
|NCSPfi               |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|NCSPfi               |SUCCESS |Missing date columns                                     |                                                 |
|NCSPfi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|NCSPfi               |SUCCESS |Missing parent columns                                   |                                                 |
|NCSPfi               |SUCCESS |Invalid parent concept code                              |                                                 |
|SNOMED2fi            |SUCCESS |Missing default columns                                  |                                                 |
|SNOMED2fi            |SUCCESS |SourceCode is empty                                      |                                                 |
|SNOMED2fi            |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|SNOMED2fi            |SUCCESS |SourceName is empty                                      |                                                 |
|SNOMED2fi            |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|SNOMED2fi            |SUCCESS |SourceFrequency is not empty                             |                                                 |
|SNOMED2fi            |SUCCESS |MappingStatus is empty                                   |                                                 |
|SNOMED2fi            |SUCCESS |MappingStatus is not valid                               |                                                 |
|SNOMED2fi            |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|SNOMED2fi            |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|SNOMED2fi            |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|SNOMED2fi            |SUCCESS |Missing C&CR columns                                     |                                                 |
|SNOMED2fi            |SUCCESS |SourceConceptId is empty                                 |                                                 |
|SNOMED2fi            |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|SNOMED2fi            |SUCCESS |SourceConceptClass is empty                              |                                                 |
|SNOMED2fi            |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|SNOMED2fi            |SUCCESS |SourceDomain is empty                                    |                                                 |
|SNOMED2fi            |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|SNOMED2fi            |WARNING |Not APPROVED mappingStatus with valid domain combination |Found 1 codes with invalid domain combinations   |
|SNOMED2fi            |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|SNOMED2fi            |SUCCESS |Missing date columns                                     |                                                 |
|SNOMED2fi            |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|SNOMED2fi            |SUCCESS |Missing parent columns                                   |                                                 |
|SNOMED2fi            |SUCCESS |Invalid parent concept code                              |                                                 |
|ProcedureModifier    |SUCCESS |Missing default columns                                  |                                                 |
|ProcedureModifier    |SUCCESS |SourceCode is empty                                      |                                                 |
|ProcedureModifier    |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|ProcedureModifier    |SUCCESS |SourceName is empty                                      |                                                 |
|ProcedureModifier    |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|ProcedureModifier    |SUCCESS |SourceFrequency is not empty                             |                                                 |
|ProcedureModifier    |SUCCESS |MappingStatus is empty                                   |                                                 |
|ProcedureModifier    |SUCCESS |MappingStatus is not valid                               |                                                 |
|ProcedureModifier    |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|ProcedureModifier    |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|ProcedureModifier    |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|ProcedureModifier    |SUCCESS |Missing C&CR columns                                     |                                                 |
|ProcedureModifier    |SUCCESS |SourceConceptId is empty                                 |                                                 |
|ProcedureModifier    |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|ProcedureModifier    |SUCCESS |SourceConceptClass is empty                              |                                                 |
|ProcedureModifier    |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|ProcedureModifier    |SUCCESS |SourceDomain is empty                                    |                                                 |
|ProcedureModifier    |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|ProcedureModifier    |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|ProcedureModifier    |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|ProcedureModifier    |SUCCESS |Missing date columns                                     |                                                 |
|ProcedureModifier    |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|ProcedureModifier    |SUCCESS |Missing parent columns                                   |                                                 |
|ProcedureModifier    |SUCCESS |Invalid parent concept code                              |                                                 |
|REIMB                |SUCCESS |Missing default columns                                  |                                                 |
|REIMB                |SUCCESS |SourceCode is empty                                      |                                                 |
|REIMB                |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|REIMB                |SUCCESS |SourceName is empty                                      |                                                 |
|REIMB                |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|REIMB                |SUCCESS |SourceFrequency is not empty                             |                                                 |
|REIMB                |SUCCESS |MappingStatus is empty                                   |                                                 |
|REIMB                |SUCCESS |MappingStatus is not valid                               |                                                 |
|REIMB                |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|REIMB                |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|REIMB                |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|REIMB                |SUCCESS |Missing C&CR columns                                     |                                                 |
|REIMB                |SUCCESS |SourceConceptId is empty                                 |                                                 |
|REIMB                |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|REIMB                |SUCCESS |SourceConceptClass is empty                              |                                                 |
|REIMB                |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|REIMB                |SUCCESS |SourceDomain is empty                                    |                                                 |
|REIMB                |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|REIMB                |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|REIMB                |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|REIMB                |SUCCESS |Missing date columns                                     |                                                 |
|REIMB                |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|REIMB                |SUCCESS |Missing parent columns                                   |                                                 |
|REIMB                |SUCCESS |Invalid parent concept code                              |                                                 |
|SPAT                 |SUCCESS |Missing default columns                                  |                                                 |
|SPAT                 |SUCCESS |SourceCode is empty                                      |                                                 |
|SPAT                 |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|SPAT                 |SUCCESS |SourceName is empty                                      |                                                 |
|SPAT                 |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|SPAT                 |SUCCESS |SourceFrequency is not empty                             |                                                 |
|SPAT                 |SUCCESS |MappingStatus is empty                                   |                                                 |
|SPAT                 |SUCCESS |MappingStatus is not valid                               |                                                 |
|SPAT                 |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|SPAT                 |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|SPAT                 |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|SPAT                 |SUCCESS |Missing C&CR columns                                     |                                                 |
|SPAT                 |SUCCESS |SourceConceptId is empty                                 |                                                 |
|SPAT                 |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|SPAT                 |SUCCESS |SourceConceptClass is empty                              |                                                 |
|SPAT                 |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|SPAT                 |SUCCESS |SourceDomain is empty                                    |                                                 |
|SPAT                 |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|SPAT                 |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|SPAT                 |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|SPAT                 |SUCCESS |Missing date columns                                     |                                                 |
|SPAT                 |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|SPAT                 |SUCCESS |Missing parent columns                                   |                                                 |
|SPAT                 |SUCCESS |Invalid parent concept code                              |                                                 |
|UNITfi               |SUCCESS |Missing default columns                                  |                                                 |
|UNITfi               |SUCCESS |SourceCode is empty                                      |                                                 |
|UNITfi               |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|UNITfi               |SUCCESS |SourceName is empty                                      |                                                 |
|UNITfi               |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|UNITfi               |SUCCESS |SourceFrequency is not empty                             |                                                 |
|UNITfi               |SUCCESS |MappingStatus is empty                                   |                                                 |
|UNITfi               |SUCCESS |MappingStatus is not valid                               |                                                 |
|UNITfi               |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|UNITfi               |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|UNITfi               |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|UNITfi               |SUCCESS |Missing C&CR columns                                     |                                                 |
|UNITfi               |SUCCESS |SourceConceptId is empty                                 |                                                 |
|UNITfi               |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|UNITfi               |SUCCESS |SourceConceptClass is empty                              |                                                 |
|UNITfi               |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|UNITfi               |SUCCESS |SourceDomain is empty                                    |                                                 |
|UNITfi               |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|UNITfi               |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|UNITfi               |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|UNITfi               |SUCCESS |Missing date columns                                     |                                                 |
|UNITfi               |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|UNITfi               |SUCCESS |Missing parent columns                                   |                                                 |
|UNITfi               |SUCCESS |Invalid parent concept code                              |                                                 |
|VNRfi                |SUCCESS |Missing default columns                                  |                                                 |
|VNRfi                |SUCCESS |SourceCode is empty                                      |                                                 |
|VNRfi                |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|VNRfi                |SUCCESS |SourceName is empty                                      |                                                 |
|VNRfi                |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|VNRfi                |SUCCESS |SourceFrequency is not empty                             |                                                 |
|VNRfi                |SUCCESS |MappingStatus is empty                                   |                                                 |
|VNRfi                |SUCCESS |MappingStatus is not valid                               |                                                 |
|VNRfi                |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|VNRfi                |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|VNRfi                |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|VNRfi                |SUCCESS |Missing C&CR columns                                     |                                                 |
|VNRfi                |SUCCESS |SourceConceptId is empty                                 |                                                 |
|VNRfi                |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|VNRfi                |SUCCESS |SourceConceptClass is empty                              |                                                 |
|VNRfi                |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|VNRfi                |SUCCESS |SourceDomain is empty                                    |                                                 |
|VNRfi                |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|VNRfi                |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|VNRfi                |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|VNRfi                |SUCCESS |Missing date columns                                     |                                                 |
|VNRfi                |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|VNRfi                |SUCCESS |Missing parent columns                                   |                                                 |
|VNRfi                |SUCCESS |Invalid parent concept code                              |                                                 |
|ICPC                 |SUCCESS |Missing default columns                                  |                                                 |
|ICPC                 |SUCCESS |SourceCode is empty                                      |                                                 |
|ICPC                 |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|ICPC                 |SUCCESS |SourceName is empty                                      |                                                 |
|ICPC                 |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|ICPC                 |SUCCESS |SourceFrequency is not empty                             |                                                 |
|ICPC                 |SUCCESS |MappingStatus is empty                                   |                                                 |
|ICPC                 |SUCCESS |MappingStatus is not valid                               |                                                 |
|ICPC                 |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|ICPC                 |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|ICPC                 |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|ICPC                 |SUCCESS |Missing C&CR columns                                     |                                                 |
|ICPC                 |SUCCESS |SourceConceptId is empty                                 |                                                 |
|ICPC                 |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|ICPC                 |SUCCESS |SourceConceptClass is empty                              |                                                 |
|ICPC                 |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|ICPC                 |SUCCESS |SourceDomain is empty                                    |                                                 |
|ICPC                 |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|ICPC                 |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|ICPC                 |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|ICPC                 |SUCCESS |Missing date columns                                     |                                                 |
|ICPC                 |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|ICPC                 |SUCCESS |Missing parent columns                                   |                                                 |
|ICPC                 |SUCCESS |Invalid parent concept code                              |                                                 |
|HPO                  |SUCCESS |Missing default columns                                  |                                                 |
|HPO                  |SUCCESS |SourceCode is empty                                      |                                                 |
|HPO                  |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|HPO                  |SUCCESS |SourceName is empty                                      |                                                 |
|HPO                  |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|HPO                  |SUCCESS |SourceFrequency is not empty                             |                                                 |
|HPO                  |SUCCESS |MappingStatus is empty                                   |                                                 |
|HPO                  |SUCCESS |MappingStatus is not valid                               |                                                 |
|HPO                  |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|HPO                  |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|HPO                  |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|HPO                  |SUCCESS |Missing C&CR columns                                     |                                                 |
|HPO                  |SUCCESS |SourceConceptId is empty                                 |                                                 |
|HPO                  |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|HPO                  |SUCCESS |SourceConceptClass is empty                              |                                                 |
|HPO                  |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|HPO                  |SUCCESS |SourceDomain is empty                                    |                                                 |
|HPO                  |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|HPO                  |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|HPO                  |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|HPO                  |SUCCESS |Missing date columns                                     |                                                 |
|HPO                  |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|HPO                  |SUCCESS |Missing parent columns                                   |                                                 |
|HPO                  |SUCCESS |Invalid parent concept code                              |                                                 |
|ProfessionalCode     |SUCCESS |Missing default columns                                  |                                                 |
|ProfessionalCode     |SUCCESS |SourceCode is empty                                      |                                                 |
|ProfessionalCode     |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|ProfessionalCode     |SUCCESS |SourceName is empty                                      |                                                 |
|ProfessionalCode     |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|ProfessionalCode     |SUCCESS |SourceFrequency is not empty                             |                                                 |
|ProfessionalCode     |SUCCESS |MappingStatus is empty                                   |                                                 |
|ProfessionalCode     |SUCCESS |MappingStatus is not valid                               |                                                 |
|ProfessionalCode     |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|ProfessionalCode     |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|ProfessionalCode     |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|ProfessionalCode     |SUCCESS |Missing C&CR columns                                     |                                                 |
|ProfessionalCode     |SUCCESS |SourceConceptId is empty                                 |                                                 |
|ProfessionalCode     |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|ProfessionalCode     |SUCCESS |SourceConceptClass is empty                              |                                                 |
|ProfessionalCode     |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|ProfessionalCode     |SUCCESS |SourceDomain is empty                                    |                                                 |
|ProfessionalCode     |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|ProfessionalCode     |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|ProfessionalCode     |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|ProfessionalCode     |SUCCESS |Missing date columns                                     |                                                 |
|ProfessionalCode     |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|ProfessionalCode     |SUCCESS |Missing parent columns                                   |                                                 |
|ProfessionalCode     |SUCCESS |Invalid parent concept code                              |                                                 |
|FGVisitType          |SUCCESS |Missing default columns                                  |                                                 |
|FGVisitType          |SUCCESS |SourceCode is empty                                      |                                                 |
|FGVisitType          |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|FGVisitType          |SUCCESS |SourceName is empty                                      |                                                 |
|FGVisitType          |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|FGVisitType          |SUCCESS |SourceFrequency is not empty                             |                                                 |
|FGVisitType          |SUCCESS |MappingStatus is empty                                   |                                                 |
|FGVisitType          |SUCCESS |MappingStatus is not valid                               |                                                 |
|FGVisitType          |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|FGVisitType          |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|FGVisitType          |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|FGVisitType          |SUCCESS |Missing C&CR columns                                     |                                                 |
|FGVisitType          |SUCCESS |SourceConceptId is empty                                 |                                                 |
|FGVisitType          |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|FGVisitType          |SUCCESS |SourceConceptClass is empty                              |                                                 |
|FGVisitType          |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|FGVisitType          |SUCCESS |SourceDomain is empty                                    |                                                 |
|FGVisitType          |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|FGVisitType          |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|FGVisitType          |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|FGVisitType          |SUCCESS |Missing date columns                                     |                                                 |
|FGVisitType          |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|FGVisitType          |SUCCESS |Missing parent columns                                   |                                                 |
|FGVisitType          |SUCCESS |Invalid parent concept code                              |                                                 |
|LABfi_ALL            |SUCCESS |Missing default columns                                  |                                                 |
|LABfi_ALL            |SUCCESS |SourceCode is empty                                      |                                                 |
|LABfi_ALL            |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|LABfi_ALL            |SUCCESS |SourceName is empty                                      |                                                 |
|LABfi_ALL            |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|LABfi_ALL            |SUCCESS |SourceFrequency is not empty                             |                                                 |
|LABfi_ALL            |SUCCESS |MappingStatus is empty                                   |                                                 |
|LABfi_ALL            |SUCCESS |MappingStatus is not valid                               |                                                 |
|LABfi_ALL            |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|LABfi_ALL            |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|LABfi_ALL            |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|LABfi_ALL            |SUCCESS |Missing C&CR columns                                     |                                                 |
|LABfi_ALL            |SUCCESS |SourceConceptId is empty                                 |                                                 |
|LABfi_ALL            |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|LABfi_ALL            |SUCCESS |SourceConceptClass is empty                              |                                                 |
|LABfi_ALL            |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|LABfi_ALL            |SUCCESS |SourceDomain is empty                                    |                                                 |
|LABfi_ALL            |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|LABfi_ALL            |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|LABfi_ALL            |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|LABfi_ALL            |SUCCESS |Missing date columns                                     |                                                 |
|LABfi_ALL            |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|LABfi_ALL            |SUCCESS |Missing parent columns                                   |                                                 |
|LABfi_ALL            |SUCCESS |Invalid parent concept code                              |                                                 |
|UNITfi_ALL           |SUCCESS |Missing default columns                                  |                                                 |
|UNITfi_ALL           |SUCCESS |SourceCode is empty                                      |                                                 |
|UNITfi_ALL           |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|UNITfi_ALL           |SUCCESS |SourceName is empty                                      |                                                 |
|UNITfi_ALL           |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|UNITfi_ALL           |SUCCESS |SourceFrequency is not empty                             |                                                 |
|UNITfi_ALL           |SUCCESS |MappingStatus is empty                                   |                                                 |
|UNITfi_ALL           |SUCCESS |MappingStatus is not valid                               |                                                 |
|UNITfi_ALL           |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|UNITfi_ALL           |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|UNITfi_ALL           |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|UNITfi_ALL           |SUCCESS |Missing C&CR columns                                     |                                                 |
|UNITfi_ALL           |SUCCESS |SourceConceptId is empty                                 |                                                 |
|UNITfi_ALL           |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|UNITfi_ALL           |SUCCESS |SourceConceptClass is empty                              |                                                 |
|UNITfi_ALL           |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|UNITfi_ALL           |SUCCESS |SourceDomain is empty                                    |                                                 |
|UNITfi_ALL           |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|UNITfi_ALL           |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|UNITfi_ALL           |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|UNITfi_ALL           |SUCCESS |Missing date columns                                     |                                                 |
|UNITfi_ALL           |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|UNITfi_ALL           |SUCCESS |Missing parent columns                                   |                                                 |
|UNITfi_ALL           |SUCCESS |Invalid parent concept code                              |                                                 |
|KantaServiceProvider |SUCCESS |Missing default columns                                  |                                                 |
|KantaServiceProvider |SUCCESS |SourceCode is empty                                      |                                                 |
|KantaServiceProvider |SUCCESS |SourceCode and conceptId are not unique                  |                                                 |
|KantaServiceProvider |SUCCESS |SourceName is empty                                      |                                                 |
|KantaServiceProvider |SUCCESS |SourceName is more than 255 characters                   |                                                 |
|KantaServiceProvider |SUCCESS |SourceFrequency is not empty                             |                                                 |
|KantaServiceProvider |SUCCESS |MappingStatus is empty                                   |                                                 |
|KantaServiceProvider |SUCCESS |MappingStatus is not valid                               |                                                 |
|KantaServiceProvider |SUCCESS |APPROVED mappingStatus conceptId is 0                    |                                                 |
|KantaServiceProvider |SUCCESS |APPROVED mappingStatus with concepts outdated            |                                                 |
|KantaServiceProvider |SUCCESS |Not APPROVED mappingStatus with concepts outdated        |                                                 |
|KantaServiceProvider |SUCCESS |Missing C&CR columns                                     |                                                 |
|KantaServiceProvider |SUCCESS |SourceConceptId is empty                                 |                                                 |
|KantaServiceProvider |SUCCESS |SourceConceptId is not a number on the range             |                                                 |
|KantaServiceProvider |SUCCESS |SourceConceptClass is empty                              |                                                 |
|KantaServiceProvider |SUCCESS |SourceConceptClass is more than 20 characters            |                                                 |
|KantaServiceProvider |SUCCESS |SourceDomain is empty                                    |                                                 |
|KantaServiceProvider |SUCCESS |SourceDomain is not a valid domain                       |                                                 |
|KantaServiceProvider |SUCCESS |Not APPROVED mappingStatus with valid domain combination |                                                 |
|KantaServiceProvider |SUCCESS |APPROVED mappingStatus with valid domain combination     |                                                 |
|KantaServiceProvider |SUCCESS |Missing date columns                                     |                                                 |
|KantaServiceProvider |SUCCESS |SourceValidStartDate is after SourceValidEndDate         |                                                 |
|KantaServiceProvider |SUCCESS |Missing parent columns                                   |                                                 |
|KantaServiceProvider |SUCCESS |Invalid parent concept code                              |                                                 |


