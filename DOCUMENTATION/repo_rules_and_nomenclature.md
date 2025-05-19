# Repository rules and nomenclatures


## Repo strategy 

Repo branch strategy is similar to gitflow strategy. 
There is one main branch, one development branch, and multiple feature branches. 

- main-branch: host the vocabulary version in use. FinnOMOP members agree periodically to sync to the same version. 
- development-branch: host the latest working vocabulary. 
- feature branches: Every time an update is made, a feature branch is created from development-branch.
 

```mermaid
---
title: Example workflow
---

gitGraph
   commit id: "init"
   commit id: "release v0.0.0" tag: "v0.0.0"
   branch development
   checkout development
   commit id: " "
   commit id: "  "
   branch feature_add_ICD10fi_vocabulary
   checkout feature_add_ICD10fi_vocabulary
   commit id: "Created ICD10fi.Usagi.csv"
   commit id: "Created NEWS.md"
   checkout development
   merge feature_add_ICD10fi_vocabulary
   commit id: "   "
   checkout main
   merge development
   commit id: "Release v1.0.0" tag: "v1.0.0"
   checkout development
   branch feature_update_ICD10fi_mappings
   checkout feature_update_ICD10fi_mappings
   commit id: "Updated ICD10fi.Usagi.csv"
   commit id: "Updated NEWS.md"
   checkout development
   merge feature_update_ICD10fi_mappings
   commit id: "    "
```

#### Adding features

The first step to add a feature (where feature means any addition or change to the repository) is to create an issue in GitHub. 
Explain in the issue the feature you want to add and why. Set the correct label to the issue (e.g. `adding_new_vocabulary`, `updating_vocabulary`, etc). 

Secondly, create a new branch starting with the issue id with source branch `development`. 
This can be done directly in Github from the right side menu.   

Now you can pull this branch to your local machine and work on the changes. Try to create commits along the way grouping the changes on the different steps you make.   

When changes in the feature branch are ready, you should create a pull request to the development branch. The repo maintainer will evaluate that the changes are correct and if so they will be merged to the development branch. Some rules for a pull request to be accepted are: 

- The feature branch bring changes only to the files with in the context of the branch. For example, a feature branch named `3-updating-vocab-ICD10fi` must only contain changes in the files related to the ICD10fi vocabulary.  
- If changes in the vocabulary files have been made, the branch must have successfully pass the automatic evaluation tests, and produce a new status dashboard reflecting the changes. 


#### Releases

Timely, the FinOMOP group decides to create a new release. Then development branch is merged to the main branch and a new release is created. FinOMOP member will update their databases to the new release. 

## Repo versioning (DRAFT)

Version refer to the whole repository. 

`v<major>.<minor>.<sub>`

- major: Change break backward compatibility: e.g.:
  - Athena vocabulary is updated
  - CDM version is updated
  - Usagi to OMOP process is updated (e.g supporting ancestor table)  
- minor: Change keep backward compatibility:  e.g.:
  - Local vocabularies are added or updated. 
- update: Minor and cosmetic fixes:  e.g.:
  - Documentation is updated
  - A sub change is made in one of the vocabularies

Any change in the repo version must be registered in the [NEWS.md](../NEWS.md) file. 

## Vocabulary versioning (DRAFT)

`v<major>.<minor>.<sub>`

- major: Changes break backward compatibility: e.g.:
  - A major change in repo defined above
  - Existing codes are changed
- minor: Changes keep backward compatibility: e.g.:
  - New codes are added
- update: Minor and cosmetic fixes. 
  - Names, translations are updated

Any change in a vocabulary version must be registered in the vocabulary's `NEWS.md` file.

