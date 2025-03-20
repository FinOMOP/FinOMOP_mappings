# Read the ICPC Usagi and source `282_1471432273510.xls` files
# Combine the `sourceCode` from Usagi file to `CodeId` in source excel to fill the `ADD_INFO:sourceParents` column
# `ParentId` column from source excel file will be used to fill `ADD_INFO:sourceParents` column
# Given that all the parent codes are also from the same vocabulary then `ADD_INFO:sourceParentVocabulary` column will be NA


# Read the Usagi file
usagi_file <- readr::read_csv("../../VOCABULARIES/ICPC/ICPC.usagi.csv")

# Read the source file with parent information
source_file <- readxl::read_xlsx("../../VOCABULARIES/ICPC/source/282_1471432273510.xls")

# Add the parent(s) for each `sourceCode` in Usagi file
usagi_file_updated <- usagi_file |>
  dplyr::left_join(source_file |> dplyr::select(CodeId, "ParentId"), by = c("sourceCode" = "CodeId")) |>
  dplyr::mutate("ADD_INFO:sourceParents" = `ParentId`,
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

# Some codes from Usagi file were missing from the source file
usagi_file_updated <- usagi_file_updated |>
  dplyr::mutate("ADD_INFO:sourceParents" = dplyr::if_else( is.na(`ADD_INFO:sourceParents`) &
                                                           stringr::str_detect(sourceCode, "^[A-Z]") &
                                                           nchar(sourceCode) > 1,
                                                           stringr::str_sub(sourceCode, 1, 1), `ADD_INFO:sourceParents`))

# Check if all the non NA distinct codes in `ADD_INFO:sourceParents` column are present in the ICPC vocabulary
usagi_file_updated |>
  dplyr::filter(!is.na(`ADD_INFO:sourceParents`)) |>
  dplyr::distinct(`ADD_INFO:sourceParents`) |>
  dplyr::summarise(all_present = all(`ADD_INFO:sourceParents` %in% usagi_file$sourceCode))


# Write the updated Usagi file
usagi_file_updated |> readr::write_csv("../../VOCABULARIES/ICPC/ICPC.usagi.csv", na = "")
