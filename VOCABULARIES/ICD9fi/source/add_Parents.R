# Read the ICD9fi Usagi file
# Rules for adding `ADD_INFO:sourceParents` are as follows
# 1. For "ICD9fi Chapter", the parent is NULL.
# 2. For "ICD9fi SubChapter", it finds all "ICD9fi Chapter" ranges that contain the "ICD9fi SubChapter" range.
# 3. For "3-char ICD9fi" or "4-char ICD9fi" it finds all "ICD9fi SubChapter" ranges that contain the code.
# 4. For "5-char ICD9fi", it first looks for all "4-char ICD9fi" codes and then for "3-char ICD9fi" codes if no "4-char ICD9fi"
#    code is found.
# Given that all the parent codes are also from the same vocabulary then `ADD_INFO:sourceParentVocabulary` column will be NA


# Read the Usagi file
usagi_file <- readr::read_csv("../../VOCABULARIES/ICD9fi/ICD9fi.usagi.csv")

# This is helper function to check the code is within the range
is_within_range <- function(code, range) {
  bounds <- stringr::str_split(range, "-", simplify = TRUE)
  start <- bounds[1]
  end <- bounds[2]
  return(code >= start & code <= end)
}

# This is function to create rules to get parent for each sourceCode
# 1. For "ICD9fi Chapter", the parent is NULL.
# 2. For "ICD9fi SubChapter", it finds all "ICD9fi Chapter" ranges that contain the "ICD9fi SubChapter" range.
# 3. For "3-char ICD9fi" or "4-char ICD9fi" it finds all "ICD9fi SubChapter" ranges that contain the code.
# 4. For "5-char ICD9fi", it first looks for all "4-char ICD9fi" codes and then for "3-char ICD9fi" codes if no "4-char ICD9fi"
#    code is found.
get_parent <- function(code, class, data) {
  if (class == "ICD9fi Chapter") {
    return(NA)
  } else if (class == "ICD9fi SubChapter") {
    parent_class <- "ICD9fi Chapter"
    parent <- data |>
      dplyr::filter(`ADD_INFO:sourceConceptClass` == parent_class) |>
      dplyr::filter(purrr::map_lgl(sourceCode, ~is_within_range(code, .))) |>
      dplyr::pull(sourceCode)
  } else if (class == "3-char ICD9fi" | class == "4-char ICD9fi") {
    parent_class <- "ICD9fi SubChapter"
    parent <- data |>
      dplyr::filter(`ADD_INFO:sourceConceptClass` == parent_class) |>
      dplyr::filter(purrr::map_lgl(sourceCode, ~is_within_range(code, .))) |>
      dplyr::pull(sourceCode)
  } else if (class == "5-char ICD9fi") {
    parent_class <- "4-char ICD9fi"
    parent_code <- stringr::str_sub(code, 1, 4)
    parent <- data |>
      dplyr::filter(sourceCode == parent_code & `ADD_INFO:sourceConceptClass` == parent_class) |>
      dplyr::pull(sourceCode)
    if (length(parent) == 0) {
      parent_class <- "3-char ICD9fi"
      parent_code <- stringr::str_sub(code, 1, 3)
      parent <- data |>
        dplyr::filter(sourceCode == parent_code & `ADD_INFO:sourceConceptClass` == parent_class) |>
        dplyr::pull(sourceCode)
    }
  }

  if (length(parent) == 0) {
    return(NA)
  } else {
    return(unique(parent))
  }
}

# Apply the function to the data to add the parent column
usagi_file_updated <- usagi_file |>
  dplyr::rowwise() |>
  dplyr::mutate(`ADD_INFO:sourceParents` = get_parent(sourceCode, `ADD_INFO:sourceConceptClass`, usagi_file)) |>
  dplyr::ungroup() |>
  dplyr::mutate(`ADD_INFO:sourceParents` = dplyr::if_else(`ADD_INFO:sourceParents` == "NA", NA_character_, `ADD_INFO:sourceParents`),
                `ADD_INFO:sourceParentVocabulary` = as.character(NA)) |>
  dplyr::transmute(sourceCode, sourceName, sourceFrequency, sourceAutoAssignedConceptIds,
                   #
                   `ADD_INFO:auto_concept_id_equivalence`,
                   #
                   `ADD_INFO:sourceName_fi`, `ADD_INFO:sourceConceptId`, `ADD_INFO:sourceDomain`,
                   `ADD_INFO:sourceConceptClass`, `ADD_INFO:sourceValidStartDate`, `ADD_INFO:sourceValidEndDate`,
                   `ADD_INFO:sourceParents`, `ADD_INFO:sourceParentVocabulary`,
                   #
                   matchScore, mappingStatus, equivalence,
                   statusSetBy, statusSetOn,
                   conceptId, conceptName, domainId,
                   mappingType, comment,
                   createdBy, createdOn,
                   assignedReviewer)

# Check if all the non NA distinct codes in `ADD_INFO:sourceParents` column are present in the ICD8fi vocabulary
usagi_file_updated |>
  dplyr::filter(!is.na(`ADD_INFO:sourceParents`)) |>
  dplyr::distinct(`ADD_INFO:sourceParents`) |>
  dplyr::summarise(all_present = all(`ADD_INFO:sourceParents` %in% usagi_file$sourceCode))

# Write the updated Usagi file
usagi_file_updated |> readr::write_csv("../../VOCABULARIES/ICD9fi/ICD9fi.usagi.csv", na = "")
