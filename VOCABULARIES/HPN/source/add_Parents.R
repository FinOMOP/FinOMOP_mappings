# Read the HPN Usagi and source `Demanding_Heart_Patient_New_Combined_Reviewed_Standardised.xlsx` files
# Combine the `sourceCode` from Usagi file to `code` in source excel to fill the `ADD_INFO:sourceParents` column
# `Parent code` column from source excel file will be used to fill `ADD_INFO:sourceParents` column
# Given that all the parent codes are also from the same vocabulary then `ADD_INFO:sourceParentVocabulary` column will be NA


# Read the Usagi file
usagi_file <- readr::read_csv("../../VOCABULARIES/HPN/HPN.usagi.csv")

# Read the source file with parent information
source_file <- readxl::read_xlsx("../../VOCABULARIES/HPN/source/Demanding_Heart_Patient_New_Combined_Reviewed_Standardised.xlsx")

# Add the parent(s) for each `sourceCode` in Usagi file
usagi_file_updated <- usagi_file |>
  dplyr::left_join(source_file |> dplyr::select(code, "Parent code"), by = c("sourceCode" = "code")) |>
  dplyr::mutate("ADD_INFO:sourceParents" = `Parent code`,
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

# Write the updated Usagi file
usagi_file_updated |> readr::write_csv("../../VOCABULARIES/HPN/HPN.usagi.csv", na = "")

