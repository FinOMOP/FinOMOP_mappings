# Read the ProcedureModifier Usagi and source `119_1510562170896.xls` files
# Combine the `sourceCode` from Usagi file to `CodeId` in source excel to fill the `ADD_INFO:sourceParents` column
# `ParentId` column from source excel file will be used to fill `ADD_INFO:sourceParents` column
# Given that all the parent codes are from the `NCSPfi` vocabulary then `ADD_INFO:sourceParentVocabulary` column will be all `NCSPfi`


# Read the Usagi file
usagi_file <- readr::read_csv("../../VOCABULARIES/ProcedureModifier/ProcedureModifier.usagi.csv")

# Read the source file with parent information
source_file <- readxl::read_xlsx("../../VOCABULARIES/ProcedureModifier/source/119_1510562170896.xls")

# Add the parent(s) for each `sourceCode` in Usagi file
usagi_file_updated <- usagi_file |>
  dplyr::left_join(source_file |> dplyr::select(CodeId, "ParentId"), by = c("sourceCode" = "CodeId")) |>
  dplyr::mutate("ADD_INFO:sourceParents" = `ParentId`,
                "ADD_INFO:sourceParentVocabulary" = as.character("NCSPfi")) |>
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
usagi_file_updated |> readr::write_csv("../../VOCABULARIES/ProcedureModifier/ProcedureModifier.usagi.csv", na = "")
