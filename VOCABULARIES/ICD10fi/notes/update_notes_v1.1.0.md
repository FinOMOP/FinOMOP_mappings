# ICD10fi v1.1.0
- This version updates all the rows in `ICD10fi.usagi.csv` using the `usagi.csv` file that was updated in HUS in 2022. In addition to some of the mappings being changed, there are changes in metadata fields `mappingStatus`, `equivalence`, `statusSetBy` etc.
- 1586 mappings have been removed.
- 1377 new mappings have been created.
- In the previous version v1.0.0 there was 3667 codes. 
    - 562 codes didn't have a mapping to a valid standard concept. 
    - 3105 codes had mappings that all lead to valid standard concepts.
    - 3655 of the codes had mappings in `usagi.csv` with `equivalence = 'UNREVIEWED'` and `statusSetOn` between 2021-07 and 2021-12.
    - This previous version provided updated mappings for 12 of the codes with `equivalence <> 'UNREVIEWED'` and `statusSetOn = "2023-03-20"`. Also for these codes, the mappings (and/or metadata in `usagi.csv`) have been replaced by new ones in version v.1.1.0. 
- In ICD10fi v1.1.0 there are the same 3667 codes. 
    - This version contains updated mappings and/or updated metadata in `usagi.csv` for all of the 3667 codes.
    - All mappings (with one exception) lead to valid standard concepts and they have `equivalence <> 'UNREVIEWED'` and `statusSetOn` between 2022-06 and 2022-11 in `usagi.csv`. The exception is one mapping taking to a nonstandard concept, but this same mapping is also in the previous version.
- The mappings in both versions v1.0.0 and v.1.1.0 of the 12 codes that had `equivalence <> 'UNREVIEWED'` already in version v1.0.0 are listed below:

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  A52.72 |  Syphilis in the tongue |  2000500242 |  Kupan aiheuttama kielitulehdus |  APPROVED |  EQUAL |  javier |  2023-03-20 |  436033 |  Syphilis |  Condition |  NULL |  javier |  2023-03-20
v1.0.0 |  A52.72 |  Syphilis in the tongue |  2000500242 |  Kupan aiheuttama kielitulehdus |  APPROVED |  EQUAL |  javier |  2023-03-20 |  436147 |  Glossitis |  Condition |  NULL |  TAYS |  2021-06-18
v1.1.0 |  A52.72 |  Syphilis in the tongue |  2000500242 |  Kupan aiheuttama kielitulehdus |  APPROVED |  WIDER |  PKo |  2022-10-26 |  4122760 |  Oral syphilis |  Condition |  NULL |  PKo |  2022-10-26

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  B02.3+H03.1 |  Zoster blepharitis |  2000500336 |  Vesirokkoviruksen aiheuttama silmäluomitulehdus |  APPROVED |  EQUAL |  javier |  2023-03-20 |  372828 |  Herpes zoster ophthalmicus |  Condition |  NULL |  javier |  2023-03-20
v1.1.0 |  B02.3+H03.1 |  Zoster blepharitis |  2000500336 |  Vesirokkoviruksen aiheuttama silmäluomitulehdus |  APPROVED |  EQUAL |  PKo |  2022-11-27 |  4211951 |  Varicella-zoster virus eyelid dermatitis |  Condition |  NULL |  PKo |  2022-11-27

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  C06.21 |  Malignant tumor of the lower retromolar surface |  2000500483 |  Alaleuan retromolaarialueen syöpä |  APPROVED |  EQUAL |  javier |  2023-03-20 |  433704 |  Primary malignant neoplasm of retromolar area |  Condition |  NULL |  TAYS |  2020-07-31
v1.1.0 |  C06.21 |  Malignant tumor of the lower retromolar surface |  2000500483 |  Alaleuan retromolaarialueen syöpä |  APPROVED |  WIDER |  PKo |  2022-06-15 |  433704 |  Primary malignant neoplasm of retromolar area |  Condition |  NULL |  TAYS |  2020-07-31

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  C49.87 |  Overall malignant tumor of connective tissue and other soft tissue primitive neuroectodermal tumor |  2000500973 |  Eri alueisiin ulottuva sidekudoksen tai muun pehmytkudoksen syöpä primitiivinen neuroektodermaalinen kasvain (PNET) |  APPROVED |  WIDER |  javier |  2023-03-20 |  44782609 |  Primitive neuroectodermal tumor |  Condition |  NULL |  TYKS |  2021-06-17
v1.1.0 |  C49.87 |  Overall malignant tumor of connective tissue and other soft tissue primitive neuroectodermal tumor |  2000500973 |  Eri alueisiin ulottuva sidekudoksen tai muun pehmytkudoksen syöpä primitiivinen neuroektodermaalinen kasvain (PNET) |  APPROVED |  WIDER |  PKo |  2022-06-28 |  44782609 |  Primitive neuroectodermal tumor |  Condition |  NULL |  TYKS |  2021-06-17

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  C50.19 |  Malignant tumor of the central part of the mammary gland, other or undeterminated histology |  2000500992 |  Rinnan keskiosan syöpä muu tai epämääräinen histologia |  APPROVED |  WIDER |  javier |  2023-03-20 |  4112853 |  Malignant tumor of breast |  Condition |  NULL |  TAYS |  2020-07-31
v1.1.0 |  C50.19 |  Malignant tumor of the central part of the mammary gland, other or undeterminated histology |  2000500992 |  Rinnan keskiosan syöpä muu tai epämääräinen histologia |  APPROVED |  EQUIVALENT |  PKo |  2022-06-01 |  44501139 |  Solid carcinoma, NOS, of central portion of breast |  Condition |  NULL |  PKo |  2022-06-01

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  D33.00 |  Medial pilosytic astrocytoma of the cerebrum |  2000501315 |  Isoaivojen keskiviivan pilosyyttinen astrosytooma |  APPROVED |  WIDER |  javier |  2023-03-20 |  36530723 |  Pilocytic astrocytoma of cerebrum |  Condition |  NULL |  TAYS |  2020-07-31
v1.1.0 |  D33.00 |  Medial pilosytic astrocytoma of the cerebrum |  2000501315 |  Isoaivojen keskiviivan pilosyyttinen astrosytooma |  APPROVED |  WIDER |  PKo |  2022-06-30 |  36530723 |  Pilocytic astrocytoma of cerebrum |  Condition |  NULL |  TAYS |  2020-07-31

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  H03.1*B02.3 |  Zoster blepharitis |  2000502251 |  Vesirokkoviruksen aiheuttama silmäluomitulehdus |  APPROVED |  WIDER |  javier |  2023-03-20 |  378425 |  Blepharitis |  Condition |  NULL |  TAYS |  2020-07-31
v1.0.0 |  H03.1*B02.3 |  Zoster blepharitis |  2000502251 |  Vesirokkoviruksen aiheuttama silmäluomitulehdus |  APPROVED |  WIDER |  javier |  2023-03-20 |  443943 |  Herpes zoster |  Condition |  NULL |  javier |  2023-03-20
v1.1.0 |  H03.1*B02.3 |  Zoster blepharitis |  2000502251 |  Vesirokkoviruksen aiheuttama silmäluomitulehdus |  APPROVED |  EQUAL |  PKo |  2022-11-27 |  4211951 |  Varicella-zoster virus eyelid dermatitis |  Condition |  NULL |  PKo |  2022-11-27

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  K01.16 |  Retained molar with obstruction in the upper jaw |  2000502661 |  Kiilautunut yläleuan poskihammas |  APPROVED |  WIDER |  javier |  2023-03-20 |  4123726 |  Impacted tooth |  Condition |  NULL |  TAYS |  2020-07-31
v1.1.0 |  K01.16 |  Retained molar with obstruction in the upper jaw |  2000502661 |  Kiilautunut yläleuan poskihammas |  APPROVED |  WIDER |  PKo |  2022-11-25 |  4043700 |  Impacted tooth |  Observation |  NULL |  PKo |  2022-11-25

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  K07.11 |  Retrognathism (mandibular)(maxillary) |  2000502760 |  Alaleuan prognatia |  APPROVED |  WIDER |  javier |  2023-03-20 |  4218622 |  Congenital prognathism |  Condition |  NULL |  TAYS |  2020-07-31
v1.1.0 |  K07.11 |  Retrognathism (mandibular)(maxillary) |  2000502760 |  Alaleuan prognatia |  APPROVED |  EQUAL |  PKo |  2022-11-25 |  4027228 |  Mandibular prognathism |  Condition |  K07.11 Alaleuan prognatia |  PKo |  2022-11-25

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  K07.13 |  Retrognaty, mandibular |  2000502762 |  Alaleuan retrognatia |  APPROVED |  WIDER |  javier |  2023-03-20 |  4033919 |  Congenital retrognathism |  Condition |  NULL |  TAYS |  2020-07-31
v1.1.0 |  K07.13 |  Retrognaty, mandibular |  2000502762 |  Alaleuan retrognatia |  APPROVED |  EQUAL |  PKo |  2022-11-25 |  4142490 |  Mandibular retrognathism |  Condition |  K07.13 Alaleuan retrognatia |  PKo |  2022-11-25

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  L85.89 |  Other specified epidermal thickening |  2000502971 |  Muu orvaskeden paksuntuma |  APPROVED |  WIDER |  javier |  2023-03-20 |  4233355 |  Increased thickness |  Condition |  NULL |  TAYS |  2020-07-31
v1.1.0 |  L85.89 |  Other specified epidermal thickening |  2000502971 |  Muu orvaskeden paksuntuma |  APPROVED |  WIDER |  PKo |  2022-11-24 |  4068036 |  Thickening of skin |  Condition |  NULL |  PKo |  2022-11-24

version |  sourcecode |  sourcename |  sourceconceptid |  sourcename_fi |  mappingstatus |  equivalence |  statussetby |  statusseton |  conceptid |  conceptname |  domainid |  comment |  createdby |  createdon
|-----|------|----|-------|------|-------|-----|-----|------|--------|-------|--------|------|------|--------|
v1.0.0 |  Y94.1 |  Accident in connection with service housing |  2000503727 |  Palveluasumiseen liittyvä tapaturma |  APPROVED |  WIDER |  javier |  2023-03-20 |  440279 |  Accident |  Observation |  NULL |  TAYS |  2020-07-31
v1.1.0 |  Y94.1 |  Accident in connection with service housing |  2000503727 |  Palveluasumiseen liittyvä tapaturma |  APPROVED |  INEXACT |  PKo |  2022-10-28 |  4235672 |  Fall in nursing home |  Observation |  NULL |  PKo |  2022-10-28
