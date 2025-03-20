# build_FGVisitType_vocabulary
# Builds an usagi file with all the combinations of service sector codes and assigns the mapping to them based on the file made by Sam


# parameters --------------------------------------------------------------

twobillioncode <- 2002300000L


# load code naming table --------------------------------------------------
path_to_fg_visist_type_codes_xlsx <- "../../VOCABULARIES/FGVisitType/source/service_sector_detailed_longitudinal_code_definitions.xlsx"


col_types = c(
  "text","text","text","text","text","text","text","date","date"
)

fg_visist_type_codes <- readxl::read_xlsx(path_to_fg_visist_type_codes_xlsx, col_types = col_types)

# add empty codes
empty_rows <- dplyr::tibble(
  SOURCE = c(
    "INPAT/OUTPAT/OPER_IN/OPER_OUT",
    "INPAT/OUTPAT/OPER_IN/OPER_OUT",
    "INPAT/OUTPAT/OPER_IN/OPER_OUT",
    "INPAT/OUTPAT/OPER_IN/OPER_OUT",
    #
    "PRIM_OUT",
    "PRIM_OUT"
  ),
  Location = c(
    "CODE5",
    "CODE6",
    "CODE8",
    "CODE9",
    #
    "CODE5",
    "CODE6"),
  Code = "0",
  name_fi = "Määrittämätön",
  name_en = "Unspecified",
  valid_start_date = lubridate::ymd("1970-01-01"),
  valid_end_date = lubridate::ymd("2099-12-31")
)

fg_visist_type_codes <- fg_visist_type_codes |>
  dplyr::bind_rows(
    empty_rows
  )

# create code table  ------------------------------------------------------

#fg_visist_type_codes_hilmo_code5
fg_visist_type_codes_hilmo_code5 <- fg_visist_type_codes |>
  dplyr::filter(SOURCE == "INPAT/OUTPAT/OPER_IN/OPER_OUT" & Location == "CODE5" ) |>
  # combine with SOURCE
  dplyr::select(-SOURCE) |>
  dplyr::mutate(data = list(dplyr::tibble(SOURCE = c("INPAT", "OUTPAT", "OPER_IN", "OPER_OUT") ))) |>
  tidyr::unnest(data) |>
  #
  dplyr::transmute(
    sourceCode = paste0(SOURCE, "|", Code ),
    sourceName = paste0(SOURCE, " | Service Sector: ", name_en),
    sourceName_fi = paste0(SOURCE, " | Palvelua: ", name_fi),
    valid_start_date = lubridate::as_date(valid_start_date),
    valid_end_date = lubridate::as_date(valid_end_date),
    sourceConceptClass = "SRC|ServiceSector",
    sourceConceptId = twobillioncode + 10000L + dplyr::row_number() + 100
  )


#fg_visist_type_codes_hilmo_code89
fg_visist_type_codes_hilmo_code8 <- fg_visist_type_codes |>
  dplyr::filter(SOURCE == "INPAT/OUTPAT/OPER_IN/OPER_OUT" & Location == "CODE8" ) |>
  # combine with SOURCE
  dplyr::select(-SOURCE) |>
  dplyr::mutate(data = list(dplyr::tibble(SOURCE = c("INPAT", "OUTPAT", "OPER_IN", "OPER_OUT") ))) |>
  tidyr::unnest(data) |>
  dplyr::select(SOURCE, Code8 = Code, name_fi8 = name_fi, name_en8 = name_en, valid_start_date8 = valid_start_date, valid_end_date8 = valid_end_date)

fg_visist_type_codes_hilmo_code9 <- fg_visist_type_codes |>
  dplyr::filter(SOURCE == "INPAT/OUTPAT/OPER_IN/OPER_OUT" & Location == "CODE9" ) |>
  dplyr::select(Code9 = Code, name_fi9 = name_fi, name_en9 = name_en, valid_start_date9 = valid_start_date, valid_end_date9 = valid_end_date)

fg_visist_type_codes_hilmo_code89 <- fg_visist_type_codes_hilmo_code8 |>
  dplyr::mutate(data = list(fg_visist_type_codes_hilmo_code9)) |>
  tidyr::unnest(data) |>
  #
  dplyr::transmute(
    sourceCode = paste0(SOURCE, "|", Code8, "|", Code9 ),
    sourceName = paste0(SOURCE, " | Contact Type: ", name_en8, " | Urgency: ", name_en9),
    sourceName_fi = paste0(SOURCE, " |  Yhteystapa: ", name_fi8, " | Kiirellisyys: ", name_fi9),
    valid_start_date = lubridate::as_date(pmax(valid_start_date8, valid_start_date9)),
    valid_end_date = lubridate::as_date(pmin(valid_end_date8, valid_end_date9)),
    sourceConceptClass = "SRC|Contact|Urgency",
    sourceConceptId = twobillioncode + 20000L + dplyr::row_number()+ 100
  )

# fg_visist_type_avohilmo_code56
fg_visist_type_codes_avohilmo_code5 <- fg_visist_type_codes |>
  dplyr::filter(SOURCE == "PRIM_OUT" & Location == "CODE5" ) |>
  dplyr::select(SOURCE, Code5 = Code, name_fi5 = name_fi, name_en5 = name_en, valid_start_date5 = valid_start_date, valid_end_date5 = valid_end_date)

fg_visist_type_codes_avohilmo_code6 <- fg_visist_type_codes |>
  dplyr::filter(SOURCE == "PRIM_OUT" & Location == "CODE6" ) |>
  dplyr::select(Code6 = Code, name_fi6 = name_fi, name_en6 = name_en, valid_start_date6 = valid_start_date, valid_end_date6 = valid_end_date)

fg_visist_type_codes_avohilmo_code56 <- fg_visist_type_codes_avohilmo_code5 |>
  dplyr::mutate(data = list(fg_visist_type_codes_avohilmo_code6)) |>
  tidyr::unnest(data) |>
  #
  dplyr::transmute(
    sourceCode = paste0(SOURCE, "|", Code5, "|", Code6 ),
    sourceName = paste0(SOURCE, " | Contact Type: ", name_en5, " | Service Type: ", name_en6),
    sourceName_fi = paste0(SOURCE, " | Yhteystapa: ", name_fi5, " | Kaynti Palvelumuoto: ", name_fi6),
    valid_start_date = lubridate::as_date(pmax(valid_start_date5, valid_start_date6)),
    valid_end_date = lubridate::as_date(pmin(valid_end_date5, valid_end_date6)),
    sourceConceptClass = "SRC|Contact|Service",
    sourceConceptId = twobillioncode + 30000L + dplyr::row_number()+ 100
  )


# load mapping tables -------------------------------------------------------------

path_to_fg_visist_type_mapings_xls <- "../../VOCABULARIES/FGVisitType/source/codeCombinations_n50_df10_v3.xls"


fg_visist_type_mappings_hilmo_code5 <- readxl::read_xls(path_to_fg_visist_type_mapings_xls, 1, na = "NA")
fg_visist_type_mappings_hilmo_code98 <- readxl::read_xls(path_to_fg_visist_type_mapings_xls, 2, na = "NA")
fg_visist_type_mappings_avohilmo_code56 <- readxl::read_xls(path_to_fg_visist_type_mapings_xls, 3, na = "NA")


# write Register codes manually
register_codes <- tibble::tibble(
  sourceCode = c("PURCH", "REIMB", "CANC", "DEATH"),
  sourceName = c("Entry in kela drug purchases registry", "Entry in kela reimbursement registry", "Entry in cancer registry", "Entry in death registry"),
  sourceName_fi = c("Kelan lääkeostorekisteriin merkintä", "Kelan korvausrekisteriin merkintä", "Syöpärekisterimerkintä", "Kuolemarekisterimerkintä"),
  sourceConceptClass = "SRC",
  # mapping
  CODE4_HOSPITAL_DAYS = as.character(NA),
  N_OCCURENCE = as.numeric(NA),
  targetConceptID = c(581458, 38004193, 38004268, 0 ),
  targetConceptName  = c("Pharmacy visit", "Case Management Visit", "Ambulatory Oncology Clinic / Center" , "" )
) |>
  dplyr::mutate(
    sourceConceptId = twobillioncode + 40000L + dplyr::row_number()+ 100
  )


# transform to usagui -----------------------------------------------------


fg_visist_type <- dplyr::bind_rows(
  #
  dplyr::left_join(
    fg_visist_type_codes_hilmo_code5,
    fg_visist_type_mappings_hilmo_code5 |>
      dplyr::mutate( sourceCode = paste0(SOURCE, "|", dplyr::if_else(is.na(CODE5), 0, CODE5)) ) |>
      dplyr::select(sourceCode, CODE4_HOSPITAL_DAYS, N_OCCURENCE, targetConceptID, targetConceptName) |>
      # due to CODE4_HOSPITAL_DAYS = NO INFO for inpat there are some repeated codes
      dplyr::distinct(sourceCode, targetConceptID, targetConceptName, .keep_all = TRUE),
    by = "sourceCode"
  ) ,
  #
  dplyr::left_join(
    fg_visist_type_codes_hilmo_code89,
    fg_visist_type_mappings_hilmo_code98 |>
      dplyr::mutate( sourceCode = paste0(SOURCE, "|",
                                         dplyr::if_else(is.na(CODE8), "0", CODE8), "|",
                                         dplyr::if_else(is.na(CODE9), "0", CODE9))) |>
      dplyr::select(sourceCode, CODE4_HOSPITAL_DAYS, N_OCCURENCE, targetConceptID, targetConceptName)|>
      # due to CODE4_HOSPITAL_DAYS = NO INFO for inpat there are some repeated codes
      dplyr::distinct(sourceCode, targetConceptID, targetConceptName, .keep_all = TRUE),
    by = "sourceCode"
  ),
  #
  dplyr::left_join(
    fg_visist_type_codes_avohilmo_code56,
    fg_visist_type_mappings_avohilmo_code56 |>
      dplyr::mutate( sourceCode = paste0(SOURCE, "|",
                                         dplyr::if_else(is.na(CODE5), "0", CODE5), "|",
                                         dplyr::if_else(is.na(CODE6), "0", CODE6))) |>
      dplyr::select(sourceCode, N_OCCURENCE, targetConceptID, targetConceptName),
    by = "sourceCode"
  ),
  #
  register_codes
)

# save to usagi -----------------------------------------------------------

usagi_file <- fg_visist_type |>
  dplyr::transmute(
    sourceCode = sourceCode,
    sourceName = sourceName,
    sourceFrequency = dplyr::if_else(!is.na(N_OCCURENCE), N_OCCURENCE, 0),
    sourceAutoAssignedConceptIds = as.integer(NA),
    matchScore = 0,
    mappingStatus = dplyr::if_else(!is.na(targetConceptID), "APPROVED", "UNCHECKED"),
    equivalence = as.character(NA),
    statusSetBy = dplyr::if_else(!is.na(targetConceptID), "Sam", as.character(NA)),
    statusSetOn = dplyr::if_else(!is.na(targetConceptID), as.integer(lubridate::as_datetime(lubridate::today()))*1000, as.double(NA)),
    conceptId = dplyr::if_else(!is.na(targetConceptID), targetConceptID, 0),
    conceptName = targetConceptName,
    domainId = "Visit",
    mappingType = as.character(NA),
    comment = as.character(NA),
    createdBy = "Javier",
    createdOn = as.integer(lubridate::as_datetime(lubridate::today()))*1000,
    assignedReviewer = as.character(NA),
    #
    `ADD_INFO:sourceConceptId` = dplyr::if_else(!is.na(sourceConceptId), sourceConceptId, 0) ,
    `ADD_INFO:sourceName_fi` = sourceName_fi,
    `ADD_INFO:sourceConceptClass` = sourceConceptClass,
    `ADD_INFO:sourceDomain` = "Visit",
    `ADD_INFO:sourceValidStartDate` = dplyr::if_else(!is.na(valid_start_date), valid_start_date, lubridate::ymd("1970-01-01")),
    `ADD_INFO:sourceValidEndDate` = dplyr::if_else(!is.na(valid_end_date), valid_end_date, lubridate::ymd("2099-12-31"))
  )



usagi_file |>   readr::write_csv("../../VOCABULARIES/FGVisitType/FGVisitType.usagi.csv", na = "")




# TEMP: build counts ------------------------------------------------------

a <- readr::read_csv("../INPUT_FILES/CODE_COUNTS/databases/FinnGenDF10.csv")

ss_counts <- dplyr::bind_rows(
  fg_visist_type_mappings_hilmo_code5 |>
    dplyr::transmute(
      source_vocabulary_id = "FGVisitType",
      source_code = paste0(SOURCE, "|", dplyr::if_else(is.na(CODE5), 0, CODE5)),
      n_events = N_OCCURENCE
    ),
  fg_visist_type_mappings_hilmo_code98 |>
    dplyr::transmute(
      source_vocabulary_id = "FGVisitType",
      source_code =  paste0(SOURCE, "|",
                            dplyr::if_else(is.na(CODE8), "0", CODE8), "|",
                            dplyr::if_else(is.na(CODE9), "0", CODE9)),
      n_events = N_OCCURENCE
    ),
  fg_visist_type_mappings_avohilmo_code56 |>
    dplyr::transmute(
      source_vocabulary_id = "FGVisitType",
      source_code =  paste0(SOURCE, "|",
                            dplyr::if_else(is.na(CODE5), "0", CODE5), "|",
                            dplyr::if_else(is.na(CODE6), "0", CODE6)),
      n_events = N_OCCURENCE
    ),
  a
)


ss_counts  |>  readr::write_csv("../INPUT_FILES/CODE_COUNTS/databases/FinnGenDF10.csv")






