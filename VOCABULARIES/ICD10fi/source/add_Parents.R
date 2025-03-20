# Read the ICD10fi Usagi and source `58_1606817342088.xlsx` files
# Combine the `sourceCode` from Usagi file to `CodeId` in source excel to fill the `ADD_INFO:sourceParents` column
# `ParentId` column from source excel file will be used to fill `ADD_INFO:sourceParents` column
# Add `ADD_INFO:sourceParentVocabulary` column based on if the parent code is present in ICD10 vocabulary


# Read the Usagi file
usagi_file <- readr::read_csv("../../VOCABULARIES/ICD10fi/ICD10fi.usagi.csv", na=c(""))

# Read the source file with parent information
source_file <- readxl::read_xlsx("../../VOCABULARIES/ICD10fi/source/58_1606817342088.xlsx")

# Fix the source file `CodeId` column by removing &,+,*,# symbols at the end of a code
source_file_updated <- source_file |>
  dplyr::mutate(CodeId = dplyr::if_else(stringr::str_detect(CodeId, "[&+*#]$") & CodeId != "K06.18#", stringr::str_replace(CodeId, "[&+*#]$", ""), CodeId),
                ParentId = dplyr::if_else(stringr::str_detect(ParentId, "[&+*#]$") & CodeId != "K06.18#", stringr::str_replace(ParentId, "[&+*#]$", ""), ParentId)) |>
  dplyr::select(CodeId, ParentId) |>
  dplyr::mutate(ParentId = dplyr::if_else(CodeId == "G10+F02.29", "G10-G14", ParentId)) |>
  dplyr::mutate(ParentId = dplyr::if_else(CodeId == "ZA0-ZB9", "XXI", ParentId))

# Add the parent(s) for each `sourceCode` in Usagi file
# Add extra parents for combination codes with + and * symbols
usagi_file_updated <- usagi_file |>
  dplyr::left_join(source_file_updated |> dplyr::select(CodeId, "ParentId"), by = c("sourceCode" = "CodeId")) |>
  dplyr::mutate("ADD_INFO:sourceParents" = `ParentId`) |>
  dplyr::mutate(combined_value = dplyr::if_else(stringr::str_detect(sourceCode, "[+*]"),
                                                stringr::str_replace_all(sourceCode, "[+*]", "|"),
                                                sourceCode),
                `ADD_INFO:sourceParents` = dplyr::if_else(stringr::str_detect(sourceCode, "[+*]"),
                                                          stringr::str_c(`ADD_INFO:sourceParents`, combined_value, sep = "|"),
                                                          `ADD_INFO:sourceParents`)
               ) |>
  dplyr::select(-ParentId,-combined_value)

# Check whether there are repetitive codes in `ADD_INFO:sourceParents` column
# None of them fail.
usagi_file_updated |>
  dplyr::mutate(values_split = stringr::str_split(`ADD_INFO:sourceParents`, "\\|"),
                all_distinct = sapply(values_split, function(x) length(x) == length(unique(x))),
                fail_reason = dplyr::if_else(!all_distinct,paste("Duplicates:", paste(unique(values_split[!all_distinct]), collapse = ", ")), NA)
                ) |>
  dplyr::filter(!all_distinct)


# Add `ADD_INFO:sourceParentVocabulary` column based on if the parent code is present in ICD10 vocabulary
# Load the concept table and filter for ICD10 vocabulary codes
concept <- readr::read_tsv("../../OMOP_VOCABULARIES/input_omop_vocabulary/CONCEPT.csv")
concept <- concept |> dplyr::filter(vocabulary_id == "ICD10")

# Parse through the `ADD_INFO:sourceParents` column and check if the code is in either in ICD10 or ICD10fi vocabulary

# Helper function to check the split codes
split_and_check <- function(x, icd10, icd10fi) {
  split_strings <- stringr::str_split(x, "\\|", simplify = TRUE)
  sources <- sapply(split_strings, function(str) {
    in_icd10 <- str %in% icd10$concept_code
    in_icd10fi <- str %in% icd10fi$sourceCode

    if (in_icd10) {
      return("ICD10")
    } else if (in_icd10fi) {
      return("ICD10fi")
    } else {
      return(NA_character_)
    }
  })

  return(paste(sources, collapse = "|"))
}

usagi_file_updated<- usagi_file_updated |>
  dplyr::mutate(`ADD_INFO:sourceParentVocabulary` = sapply(`ADD_INFO:sourceParents`,
                                                           split_and_check,
                                                           icd10 = concept |> dplyr::select(concept_code),
                                                           icd10fi = usagi_file_updated |> dplyr::select(sourceCode))) |>
  dplyr::mutate(`ADD_INFO:sourceParentVocabulary` = dplyr::if_else(`ADD_INFO:sourceParentVocabulary` == "NA",
                                                                   NA_character_,
                                                                   `ADD_INFO:sourceParentVocabulary`)) |>
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
usagi_file_updated |> readr::write_csv("../../VOCABULARIES/ICD10fi/ICD10fi.usagi.csv", na = "")
