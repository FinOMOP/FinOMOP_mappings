


concept  <- dplyr::tbl(connection, dbplyr::in_schema(vocabularyDatabaseSchema, "concept"))
concept_relationship  <- dplyr::tbl(connection, dbplyr::in_schema(vocabularyDatabaseSchema, "concept_relationship"))


concept_loinc <- concept |>
  dplyr::filter(vocabulary_id == "LOINC", standard_concept == "S", concept_class_id == "Lab Test") 


loinc_properties <- concept_loinc |> left_join(
  concept_relationship  |>
    dplyr::filter(relationship_id %in% c("Has time aspect", "Has property", "Has component", "Has system", "Has method")) ,
  by = c("concept_id" = "concept_id_1")
)  |> 
  left_join(
    concept |> dplyr::select(
      concept_id,
      loinc_property = concept_name
    ),
    by = c("concept_id_2" = "concept_id")
  )  |> 
  dplyr::select(
    concept_id,
    property_type = relationship_id,
    loinc_property
  ) |>
  dplyr::collect()  |> 
  tidyr::pivot_wider(
    names_from = property_type,
    values_from = loinc_property
  )

loinc_is_panel <- concept_loinc |> left_join(
  concept_relationship  |>
    dplyr::filter(relationship_id %in% c("Panel contains")) ,
  by = c("concept_id" = "concept_id_1")
)   |> 
  dplyr::filter(!is.na(concept_id_2)) |>
  dplyr::distinct(concept_id)  |> 
  dplyr::collect()

concept_loinc_properties <- concept_loinc |> 
  dplyr::collect() |> 
  dplyr::left_join(
    loinc_properties,
    by = "concept_id"
  ) |> 
  dplyr::select(
    concept_id,
    concept_name,
    time_aspect = `Has time aspect`,
    property = `Has property`,
    component = `Has component`,
    system = `Has system`,
    method = `Has method`
  ) |> 
  left_join(
    loinc_is_panel |> 
      dplyr::mutate(is_panel = TRUE),
    by = "concept_id"
  ) 

#
# analyssis
#

# How many LOINC concepts are panels?
concept_loinc_properties |> count(is_panel)

# How many time aspects are there?
concept_loinc_properties |> 
  dplyr::count(time_aspect, sort = TRUE)

# How many properties are there?
concept_loinc_properties |> 
  dplyr::count(property, sort = TRUE) 

# How many components are there?
concept_loinc_properties |> 
  dplyr::count(component, sort = TRUE) 

# How many methods are there?
concept_loinc_properties |> 
  dplyr::count(method, sort = TRUE)

# How many systems are there?
concept_loinc_properties |> 
  dplyr::count(system, sort = TRUE)  


concept_loinc_properties |> 
  dplyr::count(is_panel, property, system, component, time_aspect, method, sort = TRUE)  


concept_loinc_properties |> 
  dplyr::filter(property=="Mass Concentration", system == "Urine", component == "Albumin",  stringr::str_starts(time_aspect, "Point in time"))


concept_loinc_properties |> 
  filter(concept_id %in% c(3029511, 3025130, 40771527)) |> 
  View()


concept_loinc_properties |> 
  filter(concept_id %in% c(3030981, 3043722)) |> 
  View()


concept_loinc_properties |> 
readr::write_tsv(
  "dev/test/concept_loinc_properties.tsv",
  na = ""
)
