
# Add a new vocabulary to the repository

For adding a new vocabulary you first need: 
- A `vocabulary-info` file. 
- A `usagi-extended` file. 

These files can be created in 2 ways: 
- Creating a `usagi-extended-input` file, importing it in Usagi, saving as `usagi-extended`. 
- Directly creating a file in `usagi-extended` format. 


## 1. Create a new issue and associated branch 

Create a new issue with name  `adding local vocab <vocabulary_id>` and label `adding local vocabulary`. 
Create a new branch branching from `development` branch with name `<issue_id>-adding-local-vocab-<vocabulary_id>`, e.g.    `3-adding-local-vocab-ICD10fi`.
Github can do this automatically for you.

## 2. Create folder and add files

1. Create a new folder inside [VOCABULARIES/](../VOCABULARIES/). Typically, this folder is named as the vocabulary's id. e.g. "ICD10fi". 
2. Into this new folder copy the `vocabulary-info` file. This is typically name as vocabulary's id follow by ".info.csv".  e.g. "ICD10fi.info.csv". 
Copy also the `usagi-extended`. This is typically name as vocabulary's id follow by ".usagi.csv". e.g. "ICD10fi.usagi.csv". 
3. Additionally, if `usagi-extended` has been created using a `usagi-extended-input`, then the `usagi-extended-input` can be also stored here. Typically, named vocabulary's id follow by ".usagi.input.csv". e.g. "ICD10fi".  
4. Additionally, you can create a folder named `source` and include the source files and scripts used to create  `usagi-extended` or `usagi-extended-input`. 
5. Create a NEWS.md file and write the tag for the first version and how it has been created. 
e.g 
```
# ICD10fi v1.0.0

- Copied from [OMOP/OMOP_yhteistyo](https://gitlab.tietoriihi.fi/omop/omop_yhteistyo). 
- There it was created by using Koodistopalvelu file excluding the codes in ICD10who. 
```


## 3. Add files to vocabularies list

Once files have been links to them need to be added to the main `vocabularies-info` files. 

1. Add a new line to file [VOCABULARIES/vocabularies_info.csv](../VOCABULARIES/vocabularies_info.csv).
Fill in columns info as follows: 

- source_vocabulary_id: unique text identifier for the vocabulary. e.g. "ICD10fi"
- twobillionare_code: 3 digits id used for defining the two billionare concept_ids . e.g. "010". IMPORTANT: all the concept_ids in the `vocabulary-info` and `usagi-extended` must be with in the range defined by this code, e.g. between 2010000000-2010999999. 
- path_to_usagi_file : relative path to `usagi-extended` file. e.g. "./ICD10fi/ICD10fi.usagi.csv".
- path_to_vocabulary_info_file : relative path to `vocabulary-info` file. e.g. "./ICD10fi/ICD10fi.info.csv"
- mapping_version: latest version recorded in the vocabulary's NEWS.md file. e.g. "v1.0.0"
- last_modify_date: date latest modified. 
- mapping_type: at the moment only "CCR" supported. CCR indicates that the usagui file can be used to build "Concep&ConceptRelationship" mappings. 
- ignore: If TRUE, then this line is ignored by the R codes. 


## 4. Add files to Status-Dashboard

To see the status of the new vocabulary on the Status-Dashboard, we need to add the info in `vocabulary-coverage` file. 

1. Add at least one line in [CODE_COUNTS/vocabularies_coverage.csv](../CODE_COUNTS/vocabularies_coverage.csv). 
Fill in columns info as follows: 

- source_vocabulary_id: Vocabulary id that will appear in the Status-Dashboard. e.g. "ICD10fi"
- target_vocabulary_ids: vocabulary id as it appears in the data.  e.g. "ICD10fi"
- mantained_by: mantainer of the target_vocabulary_ids. e.g."FinnOMOP".
- ignore: If TRUE, then this line is ignored by the R codes. 


## 4. Use R scripts to validate files and add them to vocabulary. 

Run script in [SCRIPTS/R_repo_management/R_scripts/update_repository.R](../SCRIPTS/R_repo_management/R_scripts/update_repository.R). (see [how to setup development enviroment](./how_to_set_up_development_enviroment.md)). 

The steps in this script: 
- Checks you have format `vocabularies-info`, `vocabulary-info`, and `usagi-extended` files  correctly. 
- Convers all the vocabularies, including the one you just added into OMOP vocabulary tables. 
- Merges the FinOMOP vocabulary tables with the OMOP tables from Athena. 
- Check for errors in the resulting merged tables. 
- Builds the status report dashboard from `vocabulary-coverage`. 

## 6. Upload changes 

If the R scrips pass all the test and your vocabulary appears in the  Status-Dashboard, then you are ready to send your work. 

1. Zip the new vocabulary tables in [OMOP_VOCABULARIES/output_omop_vocabulary/](../OMOP_VOCABULARIES/output_omop_vocabulary/) into a zip file replacing 
[OMOP_VOCABULARIES/output_omop_vocabulary.zip](../OMOP_VOCABULARIES/output_omop_vocabulary.zip). 
2. Commint your last work and create a pull-request towards the `development` branch. 
3. Wait. A repository maintainer will evaluate your changes and if correct will merge your vocabulary to the `development` branch.  