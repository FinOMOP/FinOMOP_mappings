# Append the HLA allele codes in usagi format to the FGVisitType Usagi vocabulary
# This file (HLA_alleles.csv) is obtained after running the prepare_hladata_for_omop_cdm.R script in https://github.com/FINNGEN/PhenotypeData
# https://github.com/FINNGEN/PhenotypeData/blob/prepareHLAforOMOPCDM/SCRIPTS/prepareHLAdataToCDM/prepare_hladata_for_omop_cdm.R

# load FGVisitType vocabulary and append the HLA allele codes ----------------------------

fg_file <- "../../VOCABULARIES/FGVisitType/FGVisitType.usagi.csv"
hla_file <- "../../VOCABULARIES/FGVisitType/source/HLA_Alleles.csv"


fg <- readr::read_csv(fg_file, show_col_types = FALSE)
hla <- readr::read_csv(hla_file, show_col_types = FALSE)

hla <- hla |> dplyr::mutate(sourceName = paste0("HLA-", sourceCode, " allele (imputed)"),
                            equivalence = "UNREVIEWED",
                            statusSetBy = "Dawit",
                            conceptId = 0,
                            createdBy = "Dawit",
                            matchScore = 0)

# Add HLA alleles not detected in Finngen to the vocab
hlaAll <- readr::read_csv("../../VOCABULARIES/FGVisitType/source/all_hla_alleles.list", show_col_types = FALSE, col_names = F)$X1

# alleles already in Usagi
present_alleles <- hla$sourceCode

missing_alleles <- setdiff(hlaAll, present_alleles)


template_row <- hla |> dplyr::slice_tail(n = 1)
last_id <- max(hla$`ADD_INFO:sourceConceptId`, na.rm = TRUE)

new_ids <- seq(
  from = last_id + 1,
  length.out = length(missing_alleles)
)

#prepare usagi formatted rows for the missing alleles
new_rows <- purrr::map2_df(
  missing_alleles,
  new_ids,
  function(allele, cid) {
    template_row |>
      dplyr::mutate(
        sourceCode = allele,
        sourceName = paste0("HLA-", allele, " allele (imputed)"),
        sourceFrequency = 0,
        equivalence = "UNREVIEWED",
        statusSetBy = "Dawit",
        conceptId = 0,
        createdBy = "Dawit",
        matchScore = 0,
        `ADD_INFO:sourceConceptId` = cid
      )
  }
)

# append to hla
hla_extended <- dplyr::bind_rows(hla, new_rows)

# it was originally set approved, but the mapping status should be UNCHECKED
hla_extended <- hla_extended |> dplyr::mutate(mappingStatus = "UNCHECKED")



# Append the HLA allele vocab to FGVisitType vocabulary

fg_updated <- dplyr::bind_rows(fg, hla_extended)


readr::write_csv(fg_updated, fg_file, na = "")





