# v5.0.0
- Reason for the update: Updated Athena vocabulary August 2026
- Updated mappings for FHL, HPN, ICD8fi, ICD9fi, ICD10fi, LABfi, LABfi_TMP, LABfi_TKU, LABfi_HUS, MICROBEfi, MICROBEfi_TKU, NCSPfi, SNOMED2fi, ProcedureModifier, REIMB, SPAT, UNITfi, ICPC, HPO, ProfessionalCode and LABfi_ALL vocabularies
- FHL: Updated 5 concept IDs and 10 concept names
- HPN: Updated 1 concept ID for review and 6 concept names
- ICD8fi: Updated 36 concept IDs, 3 concept IDs for review, 27 domains and 131 concept names
- ICD9fi: Updated 31 concept IDs, 13 concept IDs for review, 15 domains and 144 concept names
- ICD10fi: Updated 26 concept IDs, 15 domains and 125 concept names
- LABfi: Updated 2 domains and 3 concept names
- LABfi_TMP: Updated 5 concept names
- LABfi_TKU: Updated 2 concept names
- LABfi_HUS: Updated 7 concept names
- MICROBEfi: Updated 13 concept IDs and 8 concept names
- MICROBEfi_TKU: Updated 4 concept IDs and 4 concept names
- NCSPfi: Updated 42 concept IDs, 31 concept IDs for review, 30 domains and 79 concept names
- SNOMED2fi: Updated 550 concept IDs, 1 concept ID for review, 153 domains and 240 concept names
- ProcedureModifier: Updated 1 concept name
- REIMB: Updated 3 concept IDs, 8 domains and 6 concept names
- SPAT: Updated 1 domain
- UNITfi: Updated 2 concept names
- ICPC: Updated 2 concept IDs, 8 domains and 5 concept names
- HPO: Updated 1 concept ID requiring remapping
- ProfessionalCode: Updated 1 concept ID, 3 domains and 37 concept IDs requiring remapping
- LABfi_ALL: Updated 3 domains and 61 concept names
- FGVisitType: Updated sourceConceptClass for Spirometry, Kidney Registry, Vision Registry, Smoking, and Body measurement variables
- ⚠️ **Mappings lost due to the update: ICD8fi (16), ICD9fi (13), ICD10fi (5), MICROBEfi (2), NCSPfi (34), SNOMED2fi (114), SPAT (1), HPO (1), ProfessionalCode (17)** ⚠️

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
