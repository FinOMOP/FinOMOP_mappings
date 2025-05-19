# How to update the vocabularies with a new Athena update

## 1. Create a new set of files in OMOP_vocabularies

Go to 🔒 [OMOP-Vocabularies](https://github.com/FinOMOP/OMOP-Vocabularies) and follow the instruction in the main README.md file.

## 2. Download the new OMOP_vocabulary

Once the new OMOP vocabulary tables are ready download them from 🔒 [OMOP-Vocabularies](https://github.com/FinOMOP/OMOP-Vocabularies) and unzip them a new folder.

We recomend it to unzip were you cloned your OMOP_vocabulary repo folder `<path_to_repos>/OMOP_vocabulary/data/input_omop_vocabulary/`, as this is ignored by .gitignore.

## 3. Create a new branch

Create a new issue with name OMOP vocab update <vocabulary_date>. Explain the reason for the update in the issue description. For example, if it is a rutine Athena update or a new vocabulary has been added. Create a new branch branching from main branch with name <issue_id>-omop-vocab-update-<date>, e.g. 3-omop-vocab-update-09022023 (This can be done automaticaly from the button on the right of the issue page).

Move your local head to the new branch.

## 3. Use R script to update all the Usagi files

- Open the R script [dev/scripts/update_usagi.R](../dev/scripts/update_usagi.R)
- Set the path to the new OMOP vocabulary folder obtained in the previous step. (line 22)
- Run the script
- Make a new commit with the changes, named "Update OMOP vocabulary"

## 4. Evaluate the changes

- The script creates/updates a summary created in [VOCABULARIES/VOCABULARIES_VALIDATION_SUMMARY.md](../VOCABULARIES/VOCABULARIES_VALIDATION_SUMMARY.md) that you can use to evaluate the changes.
- Also changes of indivudial files can be seen in each usagi-extended file.

## 5. Fix changes due to the update

- Run the script [dev/scripts/runAllLocal.R](../dev/scripts/runAllLocal.R) to find potential error introduced by the changes.
- Make a new commit with the changes, named "Validation after update"
- If any error is found, you can fix them manually by edditing the usagi-extended files in Usagi. Remeber to build the new index. 
- Make a new commint for each vocabulary file you have changed, named "Fixed <vocabulary_name>"

## 6. Create a pull request

- Commit your last work and create a pull-request towards the `development` branch.
- Wait. A repository maintainer will evaluate your changes and if correct will merge your vocabulary to the `development` branch.
