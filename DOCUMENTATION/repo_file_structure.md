# Repository folder structure

- README.md : basic repo info. 
- NEWS.md : over all repo change log.


## VOCABULARIES

This folder contains one subfolder for each of the local vocabularies, one configuration file "vocabularies.csv" and two information files "VOCABULARIES_VALIDATION_STATUS.md" and "VOCABULARIES_LAST_AUTOMATIC_UPDATE.md".

- vocabularies.csv: Contains a table with the infomration to process each vocabulary ([see details](https://finomop.github.io/ROMOPMappingTools/articles/filesFormat.html)).
- VOCABULARIES_VALIDATION_STATUS.md: Is a file generated automatically in each pull request with a summary of the checks performed in all the vocabularies.
- VOCABULARIES_LAST_AUTOMATIC_UPDATE.md: Is a file generated automatically after a OMOP vocabulary update. It contains a summary of the changes in the vocabulary files.

Subfolders are, named as the vocabulary_id. 
Each vocabulary subfolder contains the following files: 

- <vocabulary_id>/<vocabulary_id>.usagi.csv: File with the codes, mapping to standard concepts, and additional information to create the vocabulary in OMOP format. File must follow the in `usagi-extended` file format. 
- <vocabulary_id>/NEWS.md: File with local vocabulary change log. 
- (optionally)<vocabulary_id>/source/: This folder, includes, if available source files and/or scripts used to create  `usagi-extended` or `usagi-extended-input`. 
 

## CODE_COUNTS

This folder contains the code counts for each database. 
- databases/ : folder with one file with code counts for each database. Files must follow the `code-counts` file format. 
- database_coverage.csv: file with links and information each of the code counts files in `databases/`.  This file must follow the in `database-coverage` file format. 
- vocabularies_coverage: file that defines how to calculate the codes coverages for each vocabulary. This file must follow the in `vocabularies-coverage` format. 


## dev and .github/workflows

Scripts for vocabulary mantainers and github workflows.  
See the README.md file in the `dev` folder for more details. 


## DOCUMENTATION 

Multiple markdown files with documentation. README.md connects them all with an index. 
