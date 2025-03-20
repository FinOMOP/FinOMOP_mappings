# Read the FGVisitType Usagi file
# There is no parent information so the Usagi file will be added two columns `ADD_INFO:sourceParents` and
# `ADD_INFO:sourceParentVocabulary` with NA values

# Read the Usagi file
usagi_file <- readr::read_csv("../../VOCABULARIES/FGVisitType/FGVisitType.usagi.csv")

# Change the pipe `|` to `-` symbol as pipe symbol is used to split the parent codes
usagi_file_update <- usagi_file |>
  dplyr::mutate(sourceCode = dplyr::if_else(grepl("\\|",sourceCode), gsub("\\|","-",sourceCode),sourceCode),
                sourceName = dplyr::if_else(grepl("\\|",sourceName), gsub("\\|","-",sourceName),sourceName),
                `ADD_INFO:sourceName_fi` = dplyr::if_else(grepl("\\|",`ADD_INFO:sourceName_fi`), gsub("\\|","-",`ADD_INFO:sourceName_fi`),`ADD_INFO:sourceName_fi`))

# Add parent column
usagi_file_update <- usagi_file_update |>
  dplyr::mutate(parent = as.character(NA))

# Add parent codes for HILMO CODE5
# INPAT will be parent code for all INPAT-*. Similaryly for OPER_IN, OPER_OUT and OUTPAT
# INPAT-0 will be parent code for all INPAT-1, INPAT-2, INPAT-31, INPAT-32, INPAT-5 and so on
# OUTPAT-0 will be parent code for all OUTPAT-*
# OPER_IN-0 will be parent code for all OPER_IN-*
# OPER_OUT-0 will be parent code for all OPER_OUT-*
usagi_file_update_hilmo_code5 <- usagi_file_update |>
  dplyr::mutate(parent = dplyr::case_when(stringr::str_detect(sourceCode, "^(INPAT|OUTPAT|OPER_IN|OPER_OUT)-0$") ~ stringr::str_replace(sourceCode, "(INPAT|OUTPAT|OPER_IN|OPER_OUT)-0$", "\\1"),
                                          stringr::str_detect(sourceCode, "^(INPAT|OUTPAT|OPER_IN|OPER_OUT)-[^-0]+$") ~ stringr::str_replace(sourceCode, "(.*)-[^0]+$", "\\1|\\1-0"),
                                          TRUE ~ parent))

# Add parent codes for HILMO CODE8 and CODE9 and AVOHILMO CODE
# INPAT-0-0 will be parent code for INAPT-0-1, INPAT-1-0
# INPAT-R10-1 will have parents INPAT-R10-0|INPAT-0-1
usagi_file_update_hilmo_code5_code89 <- usagi_file_update_hilmo_code5 |>
  dplyr::mutate(parent = dplyr::case_when(stringr::str_detect(sourceCode, "^(INPAT|OUTPAT|OPER_IN|OPER_OUT)-0-0$") ~ stringr::str_replace(sourceCode, "(.*)-0-0$", "\\1"),
                                          stringr::str_detect(sourceCode, "^(INPAT|OUTPAT|OPER_IN|OPER_OUT)-0-[^0]$") ~ stringr::str_replace(sourceCode, "(.*)-0-[^0]$", "\\1|\\1-0-0"),
                                          stringr::str_detect(sourceCode, "^(INPAT|OUTPAT|OPER_IN|OPER_OUT)-(R.*?)-0$") ~ stringr::str_replace(sourceCode, "(.*)-(R.*?)-0$", "\\1|\\1-0-0"),
                                          stringr::str_detect(sourceCode, "^(INPAT|OUTPAT|OPER_IN|OPER_OUT)-(R.*?)-[^0]$") ~ stringr::str_replace(sourceCode, "(.*)-(R.*?)-([^0])$", "\\1|\\1-\\2-0|\\1-0-\\3"),
                                          TRUE ~ parent))

# Add parent codes for AVOHILMO CODE5 and CODE6
# PRIM_OUT-0-0 will be parent code for PRIM_OUT-R10-0, PRIM_OUT-0-T11 and such
# PRIM_OUT-R10-T11 will have parents PRIM_OUT-R10-0|PRIM_OUT-0-T11
usagi_file_update_hilmo_code5_code89_avohilmo_code56 <- usagi_file_update_hilmo_code5_code89 |>
  dplyr::mutate(parent = dplyr::case_when(stringr::str_detect(sourceCode, "^(PRIM_OUT)-0-0$") ~ stringr::str_replace(sourceCode, "(PRIM_OUT)-0-0$", "\\1"),
                                          stringr::str_detect(sourceCode, "^(PRIM_OUT)-0-(T.*?)$") ~ stringr::str_replace(sourceCode, "(PRIM_OUT)-0-(T.*?)$", "\\1|\\1-0-0"),
                                          stringr::str_detect(sourceCode, "^(PRIM_OUT)-(R.*?)-0$") ~ stringr::str_replace(sourceCode, "(PRIM_OUT)-(R.*?)-0$", "\\1|\\1-0-0"),
                                          stringr::str_detect(sourceCode, "^(PRIM_OUT)-(R.*?)-(T.*?)$") ~ stringr::str_replace(sourceCode, "(PRIM_OUT)-(R.*?)-(T.*?)$", "\\1|\\1-\\2-0|\\1-0-\\3"),
                                          TRUE ~ parent))


# Add the columns `ADD_INFO:sourceParents` and `ADD_INFO:sourceParentVocabulary`
usagi_file_updated <- usagi_file_update_hilmo_code5_code89_avohilmo_code56 |>
  dplyr::mutate("ADD_INFO:sourceParents" = parent,
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
usagi_file_updated |> readr::write_csv("../../VOCABULARIES/FGVisitType/FGVisitType.usagi.csv", na = "")
