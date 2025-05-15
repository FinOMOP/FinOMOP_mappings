# Update the OMOP vocabulary from Athena

## 1. Create a new set of files in OMOP_vocabularies

Go to 🔒 [OMOP-Vocabularies](https://github.com/FinOMOP/OMOP-Vocabularies) and follow the instruction in the main README.md file.

## 2. Download the new OMOP_vocabulary

Once the new OMOP vocabulary tables are ready download them from 🔒 [OMOP-Vocabularies](https://github.com/FinOMOP/OMOP-Vocabularies) and unzip them a new folder.

We recomend it to unzip were you cloned your OMOP_vocabulary repo folder `<path_to_repos>/OMOP_vocabulary/data/input_omop_vocabulary/`, as this is ignored by .gitignore.

## 3. Use R script to update all the Usagi files

- Open the R script [dev/scripts/update_usagi.R](../dev/scripts/update_usagi.R)
- Set the path to the new OMOP vocabulary folder obtained in the previous step. (line 22)
- Run the script



## 5. Use R scripts to validate files and add them to vocabulary.

Run script in [SCRIPTS/R_repo_management/R_scripts/update_repository.R](../SCRIPTS/R_repo_management/R_scripts/update_repository.R).
(see [how to setup development enviroment](./how_to_set_up_development_enviroment.md)).

The steps in this script: - Checks you have format `vocabularies-info`, `vocabulary-info`, and `usagi-extended` files correctly.
- Convers all the vocabularies, including the one you just added into OMOP vocabulary tables.
- Merges the FinOMOP vocabulary tables with the OMOP tables from Athena.
- Check for errors in the resulting merged tables.
- Builds the status report dashboard from `vocabulary-coverage`.

## 6. Upload changes

If the R scrips pass all the test and your vocabulary appears in the Status-Dashboard, then you are ready to send your work.

1.  Zip the new vocabulary tables in [OMOP_VOCABULARIES/output_omop_vocabulary/](../OMOP_VOCABULARIES/output_omop_vocabulary/) into a zip file replacing [OMOP_VOCABULARIES/output_omop_vocabulary.zip](../OMOP_VOCABULARIES/output_omop_vocabulary.zip).
2.  Commit your last work and create a pull-request towards the `development` branch.
3.  Wait. A repository maintainer will evaluate your changes and if correct will merge your vocabulary to the `development` branch.