# Read the KantaServiceProvider Usagi file
# There is no parent information so the Usagi file will be added two columns `ADD_INFO:sourceParents` and
# `ADD_INFO:sourceParentVocabulary` with NA values

# Read the Usagi file
usagi_file <- readr::read_csv("../../VOCABULARIES/KantaServiceProvider/KantaServiceProvider.usagi.csv")

# Add the columns `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary`
usagi_file_updated <- usagi_file |>
  dplyr::mutate("ADD_INFO:sourceParents" = as.character(NA),
                "ADD_INFO:sourceParentVocabulary" = as.character(NA)) |>
  dplyr::transmute(sourceCode, sourceName, sourceFrequency, sourceAutoAssignedConceptIds,
                   #
                   `ADD_INFO:sourceConceptId`, `ADD_INFO:sourceName_fi`, `ADD_INFO:sourceConceptClass`,
                   `ADD_INFO:sourceDomain`, `ADD_INFO:sourceValidStartDate`, `ADD_INFO:sourceValidEndDate`,
                   `ADD_INFO:sourceParents`, `ADD_INFO:sourceParentVocabulary`,
                   #
                   matchScore, mappingStatus, equivalence,
                   statusSetBy, statusSetOn,
                   conceptId, conceptName, domainId,
                   mappingType, comment,
                   createdBy, createdOn,
                   assignedReviewer)


# Write the Usagi file with two additional columns
usagi_file_updated |> readr::write_csv("../../VOCABULARIES/KantaServiceProvider/KantaServiceProvider.usagi.csv", na = "")
