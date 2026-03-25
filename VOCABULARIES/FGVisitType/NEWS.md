# FGVisitType 1.8.5

- Updated sourceConceptClass for Spirometry, Kidney Registry, Vision Registry, Smoking, and Body measurement variables

# FGVisitType 1.8.4

- Added Spirometry visit and measurement codes with mappings
- Source biobanks within Spirometry now have parent concept BIOBANK

# FGVisitType 1.8.3

- Added seven drug registry source codes covering vaccination, rheuma, hospital administered and other drugs
- Vaccination is mapped to Outpatient visit
- hospital administered is mapped to Inpatient hospital
- Rest are mapped to Pharmacy visit.

# FGVisitType 1.8.2

- Added five drug registry source codes where all map to pharmacy visit

# FGVisitType 1.8.1

- Added four hierarchy codes that captures visits in HILMO before and after 2019 as there are two systems in use.
- Added one hierarchy code that captures visits in AvoHILMO system which is PRIM_OUT

# FGVisitType 1.8.0

- Changed the codes with `|` symbol to `-` due to introduction of hierarchy in the visit codes

# FGVisitType 1.7.1

- Fixed `Variable` class to `FG_Variable`

# FGVisitType 1.7.0

- Added Kidney and Kanta registries visit codes
- Added Kidney registry variables

# FGVisitType 1.6.1

- Added `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary` columns

# FGVisitType 1.6.0

- Added condition codes to cover hemianopsia and combination of visual acuity.
- Updated unmapped visual field diameter codes by including source value

# FGVisitType 1.5.0

- Added code to cover "visit" 
- Added unmapped visual field diameter codes to cover "Measurement" domain for visual impairment registry

# FGVisitType v1.4.0

- Added Smoking non-standard codes in "Observation" domain

# FGVisitType v1.3.0

- Added BMI and height non-standard codes in "Measurement" domain

# FGVisitType v1.2.0

- Added one code to cover a "visit" to the Biobank entry in FinnGen data

# FGVisitType v1.1.0

- Added one code to cover a "visit" to the Birth-mothers register

# FGVisitType v1.0.0

- Created from combinations of SOURCE and service sector codes in FinnGen data.
