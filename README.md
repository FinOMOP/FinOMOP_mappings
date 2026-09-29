# FinOMOP_mappings

This repository is part of a series of repositories that helps maintain the mapping of Finnish medical vocabularies to OMOP standard concepts. 

``` mermaid
flowchart LR
    A["<a href='https://athena.ohdsi.org/search-terms/start' target='_blank'>Athena</a>"]
    B["[GitHub]🔒 <a href='https://github.com/FinOMOP/OMOP_vocabularies' target='_blank'>OMOP_vocabularies</a>"]
    C["[GitHub] <a href='https://github.com/FinOMOP/FinOMOP_mappings' target='_blank'>FinOMOP_mappings</a>"]
    D["[GitHub]🔒 <a href='https://github.com/FinOMOP/FinOMOP_vocabularies' target='_blank'>FinOMOP_vocabularies</a>"]
    E[ETL]
    A --> B
    B --> C
    C --> D
    D --> E
```

Other repositores are keep private as they contain proprietary data. 

OMOP vocabualies are downloaded from [Athena](https://athena.ohdsi.org/search-terms/start) and stored in [FinOMOP_vocabularies](https://github.com/FinOMOP/FinOMOP_vocabularies).
This repository, [FinOMOP_mappings](https://github.com/FinOMOP/FinOMOP_mappings), tracks the changes of mapping files in `usagi-extended` format for multiple vocabularies. 
Mapping files are transformed, appended to the OMOP vocabulary tables and stored in [FinOMOP_vocabularies](https://github.com/FinOMOP/FinOMOP_vocabularies), for the FinOMOP members to use in their ETLs.


The repository :
- Stores mapping files in `usagi-extended` format (USAGI v1.4.0 format plus few additional columns) for multiple vocabularies ([see](https://finomop.github.io/ROMOPMappingTools/articles/filesFormat.html)). 
- Stores code counts from different Finnish institutions for assessing mapping coverage. 
- Automatically validates changes in the mapping files and blocks its merge if the changes are not valid.
- Automatically updates the [Status Dashboard](https://finomop.github.io/FinOMOP_mappings/) when a new release is created.
- Automatically creates a new vocabulary release in [FinOMOP_vocabularies](https://github.com/FinOMOP/FinOMOP_vocabularies) when a new release is created.
- Allows to manually update mapping files based on a new Athena release.

(this repo uses the companion R package [ROMOPMappingTools](https://github.com/FinOMOP/ROMOPMappingTools))

# Quick reference

## For CDM users
You can see how well a vocabulary covers you data in the [Status Dashboard](https://finomop.github.io/FinOMOP_mappings/).

## For mappers 

#### Environment setup
- Install [USAGI](https://ohdsi.github.io/Usagi/installation.html)
- Navigate to the latest releas in [OMOP_vocabularies](https://github.com/FinOMOP/OMOP_vocabularies)
- Download the input_omop_vocabulary.zip
- Unzip it
- Open USAGI build the index from the unzipped folder

#### Mapping
- Download the wanted `<vocabulary>.usagi.csv` file from the correct folder in [VOCABULARIES](VOCABULARIES)
- Open and edit in USAGI
- Save and upload back to the repository when ready 

## For ETL

- Navigate to the latest releas in [FinOMOP_vocabularies](https://github.com/FinOMOP/FinOMOP_vocabularies)
- Download the FinOMOP_vocabularies.zip
- Unzip it
- Load in your local database 

## For maintainers 
See extended documentation in [DOCUMENTATION/README.md](./DOCUMENTATION/README.md)

## ⚠️ Important Licensing Information

This repository contains multiple types of intellectual property, and it is crucial to understand how each is licensed.

### 1. License for Our Mappings

The CSV mapping files located in this repository, which represent the original work of the **FinOMOP Mappings project**, are licensed under the **Creative Commons Attribution 4.0 International License (CC BY 4.0)**.

A full copy of this license is available in the `LICENSE` file in this repository.

Under this license, you are free to share and adapt our mapping files for any purpose, provided you give appropriate credit to this project.

### 2. Licenses for the Underlying Vocabularies

**The CC BY 4.0 license applies ONLY to our mapping files and NOT to the underlying medical vocabularies.**

This project connects codes from various source vocabularies (e.g., Finnish ICD-10, ICD-8, ICPC2, lab codes) to target concepts in the OMOP Common Data Model Standard Vocabularies (which include SNOMED CT, LOINC, RxNorm, and others).

These source and target vocabularies have their own, often restrictive, licenses. **You are solely responsible for acquiring the necessary licenses and complying with the terms of use for any of the underlying vocabularies you use via these mappings.**

This project does not grant you any rights to use the underlying vocabularies. We strongly advise you to investigate the licensing requirements for each vocabulary before using the codes in your own work.







