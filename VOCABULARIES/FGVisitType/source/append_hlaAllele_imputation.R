# Append the HLA allele codes in usagi format to the FGVisitType Usagi vocabulary

# load FGVisitType vocabulary and append the HLA allele codes ----------------------------

fg_file <- "../../VOCABULARIES/FGVisitType/FGVisitType.usagi.csv"
hla_file <- "../../VOCABULARIES/FGVisitType/source/HLA_Alleles.csv"


fg <- readr::read_csv(fg_file, show_col_types = FALSE)
hla <- readr::read_csv(hla_file, show_col_types = FALSE)


fg_updated <- dplyr::bind_rows(fg, hla)

readr::write_csv(fg_updated, fg_file, na = "")

