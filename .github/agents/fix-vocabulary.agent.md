---
# Fill in the fields below to create a basic custom agent for your repository.
# The Copilot CLI can be used for local testing: https://gh.io/customagents/cli
# To make this agent available, merge this file into the default repository branch.
# For format details, see: https://gh.io/customagents/config

name: Fix Vocabulary
description: Given an issue describing fixes to some source codes of a vocabulary, edit the target usagi.csv and bump the vocabulary NEWS.md
---

# Fix Vocabulary
The aim of this agent is to apply small, targeted fixes requested in an issue to existing rows of a vocabulary mapping file
(`VOCABULARIES/<vocabulary>/<vocabulary>.usagi.csv`), document them in the vocabulary `NEWS.md`,
and leave the file in a state that passes the `validateVocabularies` workflow (`.github/workflows/validateVocabularies.yaml`).

The mapping files are in `usagi-extended` format, see https://finomop.github.io/ROMOPMappingTools/articles/filesFormat.html.
Past examples of this kind of fix: commits `8bcc133` (LABfi HLA-B sourceCode/sourceName) and `a5c46c4` (ICD10fi K09.01 mapping).

## Inputs
The issue triggering this agent must indicate:
- **Vocabulary**: the `source_vocabulary_id` to fix. It must be listed in `VOCABULARIES/vocabularies.csv`; the `path_to_usagi_file` and `path_to_news_file` columns give the files to edit.
- **Source codes**: the list of `sourceCode` values to modify.
- **Changes**: what to change in those rows. Typically:
  - A mapping fix: new target `conceptId` (optionally `conceptName`, `domainId`, `mappingStatus`, `equivalence`, `comment`).
    It may also be adding a second target (one extra row) or removing one target (deleting one row) for a sourceCode.
  - Other fixes on the same rows: `sourceName`, `sourceCode` typos, or any `ADD_INFO:*` column
    (e.g. `ADD_INFO:sourceName_fi`, `ADD_INFO:sourceParents`, `ADD_INFO:sourceValidStartDate`, `ADD_INFO:sourceConceptClass`, ...).

If any of these is missing or ambiguous (e.g. a sourceCode not found, a conceptId not given for a mapping fix, unclear which of several rows to change), **stop and ask in the issue/PR** instead of guessing.

## Steps
1. **Validate inputs**
   - The vocabulary exists in `VOCABULARIES/vocabularies.csv` and its usagi file exists. Stop and inform the user otherwise.
   - Every requested `sourceCode` exists in the usagi file (exact string match, codes are case and punctuation sensitive). Report any that do not.
   - Report how many rows each sourceCode has (a sourceCode mapped to several concepts has one row per `conceptId`) and make sure the requested change unambiguously identifies the rows to edit.
2. **Edit only the requested rows and columns.** Do not reorder, reformat, re-quote or otherwise touch any other row.
   Apply these rules per type of change:
   - **Mapping fix (conceptId changed, added or removed)**
     - `conceptId`: the new target concept. It must be a *standard* and *valid* OMOP concept.
     - `conceptName`, `domainId`: use the values given in the issue if any. Otherwise set them to the target concept name and domain if known;
       the validation workflow (ROMOPMappingTools) refreshes `conceptName` and `domainId` from the OMOP vocabulary in the PR, so do not block on them.
     - `mappingStatus`: as given in the issue; if not given, `APPROVED`.
     - `equivalence`: as given in the issue; if not given, keep the current value (for a new row copy it from the sibling row).
     - `statusSetBy`: `#<issue_number>`.
     - `statusSetOn`: current datetime in milliseconds as integer.
     - `comment`: if the issue gives a reason, a short comment; otherwise keep the current value.
     - `mappingType`: keep `MAPS_TO` unless the issue says otherwise.
     - Do not change `createdBy` / `createdOn` of existing rows.
     - **Adding a target to an existing sourceCode**: duplicate the existing row of that sourceCode and change only the mapping columns above.
       All rows of the same sourceCode must share the same `sourceName`, `sourceFrequency` and all `ADD_INFO:*` values,
       **in particular the same `ADD_INFO:sourceConceptId`**. Place the new row right after its sibling rows.
     - **Removing a target**: delete only that row; at least one row must remain for the sourceCode
       (to unmap, set `conceptId` to `0`, `conceptName` and `domainId` to `unmapped`, and `mappingStatus` to `UNCHECKED` or `FLAGGED`).
   - **Other fixes** (`sourceName`, `sourceCode`, `ADD_INFO:*`): change the value in **all** rows of that sourceCode so they stay consistent.
     - `sourceName` must be in English; Finnish names go in `ADD_INFO:sourceName_fi`.
     - When changing a `sourceCode`, check the new code does not already exist in the file, and update any `ADD_INFO:sourceParents` in other rows that pointed to the old code.
     - Never change `ADD_INFO:sourceConceptId` of an existing code (it is the persistent id used in the CDMs).
3. **Adding new source codes**: if the issue requires adding codes that do not exist yet, follow the rules in
   `.github/agents/update-from-koodistopalvelu.agent.md` (step 4) to fill the new rows, in particular a new unique `ADD_INFO:sourceConceptId`
   (largest existing + 1, still inside the vocabulary offset range) and the same `sourceConceptClass`/`sourceDomain` conventions as existing rows.
   Use `createdBy` = `Fix Vocabulary Agent` and `statusSetBy` = `#<issue_number>`.
4. **Update the vocabulary NEWS.md** (`VOCABULARIES/<vocabulary>/NEWS.md`):
   - Add a new section at the top, keeping the same heading style as the previous one (e.g. `# NCSPfi 1.1.10` or `# SPAT v1.1.1`).
   - Version bump `<major>.<minor>.<patch>`:
     - **patch**: mapping fixes, name/translation fixes, other column fixes on existing rows.
     - **minor** (and reset patch to 0): when new source codes are added.
   - One bullet per kind of change, short and concrete, including the sourceCodes and old → new values for mapping fixes, and the issue number. E.g.:
     `- Fixed mapping of AA1AA from concept_id 4125350 (CT of head) to 4155446 (Plain X-ray of head) (#123)`
   - Do **not** edit the root `NEWS.md` (it is compiled at release time by the MainRelease agent).
5. **Pre-validate locally** (see next section) and fix anything that fails before opening the PR.
6. **Open the PR against the `development` branch**, from a branch named `<issue_number>-fix-<vocabulary>`.
   The PR may only touch the target usagi file and its `NEWS.md`.
   Do **not** edit `VOCABULARIES/VOCABULARIES_VALIDATION_STATUS.md`; the workflow regenerates it and pushes an `Update validation status [skip ci]` commit.
   In the PR description list, per sourceCode, a before → after table of the changed columns.
   After the workflow runs, check `VOCABULARIES_VALIDATION_STATUS.md` for any `ERROR` (or new `WARNING`) on the vocabulary and fix them.

## File format rules (must be preserved)
- UTF-8 without BOM, `\n` line endings, comma separated, header row unchanged (same columns, same order).
- Quote a field with `"` only if it contains a comma, a quote or a newline (as the rest of the file does). Escape `"` as `""`.
- Dates as `YYYY-MM-DD`. Timestamps (`statusSetOn`, `createdOn`) as integer milliseconds.
- Prefer editing with a CSV-aware tool that writes back only the changed lines, then check `git diff` shows only the intended lines changed.

## Validation checks run by the PR workflow
The workflow runs `ROMOPMappingTools::buildVocabulariesAll` against the latest OMOP vocabulary. Each vocabulary must pass (ERROR fails the PR):
- Missing default columns / Missing C&CR columns / Missing date columns / Missing parent columns: header must not change.
- `sourceCode` not empty and at most 50 characters.
- `sourceCode` + `conceptId` combination is unique (no duplicate target for the same code).
- `sourceName` not empty and at most 255 characters.
- `sourceFrequency` not empty (existing files use `-1` or `0`).
- `mappingStatus` not empty and a valid value (values used in the repo: `APPROVED`, `UNCHECKED`, `FLAGGED`, `INVALID_TARGET`).
- `APPROVED` rows must have `conceptId` != 0.
- `APPROVED` rows must not point to outdated (non-standard or invalid) concepts. Not-APPROVED rows with outdated concepts give a warning.
- `ADD_INFO:sourceConceptId` not empty, a number within the vocabulary range (`source_concept_id_offset` in `vocabularies.csv`, below the next vocabulary offset), and unique per sourceCode
  (one sourceConceptId per sourceCode, shared by all its rows, never reused by another sourceCode).
- `ADD_INFO:sourceConceptClass` not empty and at most 20 characters.
- `ADD_INFO:sourceDomain` not empty and a valid OMOP domain (e.g. `Condition`, `Procedure`, `Measurement`, `Drug`, `Observation`, `Visit`, `Provider`, `Unit`, `Device`).
- Domain combination: when a sourceCode maps to several concepts, the combination of their target domains must be valid (APPROVED → error, others → warning).
  When adding a second target, prefer one in the same domain as the existing one, or explain the combination in the PR.
- `ADD_INFO:sourceValidStartDate` not after `ADD_INFO:sourceValidEndDate`.
- `ADD_INFO:sourceParents`: every parent code (separated by `|` if several, e.g. `INPAT|INPAT-0`) must exist in the usagi file itself or in the vocabulary given in `ADD_INFO:sourceParentVocabulary`.

The OMOP vocabulary used by the workflow is private, so the concept checks cannot be run locally.
Run at least the structural checks with a script like this one (adapt `VOCAB`):

```python
import csv, collections
VOCAB = "NCSPfi"
vocabs = list(csv.DictReader(open("VOCABULARIES/vocabularies.csv", encoding="utf-8")))
offsets = sorted(int(v["source_concept_id_offset"]) for v in vocabs)
offset = next(int(v["source_concept_id_offset"]) for v in vocabs if v["source_vocabulary_id"] == VOCAB)
upper = next((o for o in offsets if o > offset), offset + 100000)
path = f"VOCABULARIES/{VOCAB}/{VOCAB}.usagi.csv"
raw = open(path, "rb").read()
assert not raw.startswith(b"\xef\xbb\xbf") and b"\r" not in raw, "BOM or CRLF found"
rows = list(csv.DictReader(open(path, encoding="utf-8")))
codes = set(r["sourceCode"] for r in rows)
err = []
pairs = collections.Counter((r["sourceCode"], r["conceptId"]) for r in rows)
err += [f"duplicated sourceCode+conceptId {k}" for k, n in pairs.items() if n > 1]
ids_by_code, codes_by_id = collections.defaultdict(set), collections.defaultdict(set)
for r in rows:
    c = r["sourceCode"]
    if not c or len(c) > 50: err.append(f"bad sourceCode '{c}'")
    if not r["sourceName"] or len(r["sourceName"]) > 255: err.append(f"{c}: bad sourceName")
    if r["sourceFrequency"] == "": err.append(f"{c}: empty sourceFrequency")
    if r["mappingStatus"] not in {"APPROVED", "UNCHECKED", "FLAGGED", "INVALID_TARGET"}: err.append(f"{c}: bad mappingStatus")
    if r["mappingStatus"] == "APPROVED" and r["conceptId"] in ("", "0"): err.append(f"{c}: APPROVED with conceptId 0")
    sid = r["ADD_INFO:sourceConceptId"]
    if not sid.isdigit() or not (offset < int(sid) < upper): err.append(f"{c}: sourceConceptId {sid} out of range")
    ids_by_code[c].add(sid); codes_by_id[sid].add(c)
    cls = r["ADD_INFO:sourceConceptClass"]
    if not cls or len(cls) > 20: err.append(f"{c}: bad sourceConceptClass")
    if not r["ADD_INFO:sourceDomain"]: err.append(f"{c}: empty sourceDomain")
    s, e = r.get("ADD_INFO:sourceValidStartDate", ""), r.get("ADD_INFO:sourceValidEndDate", "")
    if s and e and s > e: err.append(f"{c}: start date after end date")
    if r.get("ADD_INFO:sourceParentVocabulary", "") in ("", VOCAB):
        for p in filter(None, r.get("ADD_INFO:sourceParents", "").split("|")):
            if p.strip() not in codes: err.append(f"{c}: parent {p} not in file")
err += [f"{c}: several sourceConceptIds {v}" for c, v in ids_by_code.items() if len(v) > 1]
err += [f"sourceConceptId {i} used by {v}" for i, v in codes_by_id.items() if len(v) > 1]
print("\n".join(err) or "OK")
```

Compare its output before and after your change: some vocabularies have pre-existing issues; your change must not add new ones.
