# v4.0.0
- Updated Athena vocabulary February 2026
- Updated mappings for FGVisitType, ICD10fi, LABfi_ALL, NCSPfi, SPAT, UNITfi and VNRfi vocabularies
- FGVisitType: Added Spirometry visit and measurement codes with mappings; Source biobanks within Spirometry now have parent concept BIOBANK
- FGVisitType: Added seven drug registry source codes covering vaccination, rheuma, hospital administered and other drugs
- ICD10fi: Added 7 new codes from THL ICD-10 koodistopalvelu update
- LABfi_ALL: Major release for FinnGen DF14; source codes longer than 50 characters are now truncated
- NCSPfi: Added 362 new codes from NCSPfi 2026 March update; translated 305 Finnish sourceName values to English
- NCSPfi: Added 93 HUS imaging and 262 HUS heart operation codes mapped in PHEMS project
- NCSPfi: Fixed mapping of AA1AA from CT of head to Plain X-ray of head
- SPAT: Added 5 new SPAT codes (SPAT1416–SPAT1420) from koodistopalvelu update
- UNITfi: Minor fixes for FinnGen DF14
- VNRfi: Added 239 new drugs, out of which 89 have been mapped; introduced dummy VNRs from 20 million range
- VNRfi: Dummy vaccination VNRs between 20000000 and 20000096 were mapped to ATC concept id


# v3.0.0
- Updated Athena vocabulary August 2025
- Updated mappings for ICD8fi, ICD9fi, ICD10fi, NCSPfi, ICPC, LABfi, LABfi_ALL, MICROBEfi, MICROBEfi_TKU, SNOMED2fi and VNRfi vocabularies
- NCSPfi: fixed spelling errors in the names of some codes
- ICD10fi: Added 407 FinnGen combination codes
- ICD10fi: Fixed mappings in lung cancer codes 
- ICD9fi: Fixed bug that caused mappings to be link to wrong concepts


# v2.0.1
- Update dashboard to include download  link

# v2.0.0

- Updated output-omop-vocabualaries after fixing bug in ROMOPtools that was setting wrong domains
- Updated Athena vocabulary 29.08.2024
- Updated mappings for ICD8fi, ICD9fi, ICD10fi, NCSPfi, ICPC, LABfi, LABfi_ALL, MICROBEfi, MICROBEfi_TKU, SNOMED2fi and VNRfi vocabularies
- Added Cancer Modifier, OMOP Genomic, HemOnc and Episode Type vocabularies to the `FinOMOP_selecting_Athena_vocabularies.csv` within folder `OMOP_VOCABULARIES`

# v1.0.0 

- Updated Athena vocabulary 03.02.2023
- Notice that this introduces mappings to invalid standard concepts

# v0.2.0

- Bug fix: vocabulary_ids and concept_class_id in CONCEPT consistent with VOCABULARY and CONCEPT_CLASS 
