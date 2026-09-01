# Plan: Sky Muster + Fixed Wireless providers and access-technology filter

## Overview

Extend the nbntracker-data schema and dataset so that:
1. The current nbn **Sky Muster** RSPs are represented.
2. The current nbn **Fixed Wireless** RSPs are represented.
3. Providers can be **filtered by nbn access technology**: fixed line vs fixed wireless vs satellite.

## Research findings (verified 2026-08-24 against live nbnco.com.au pages)

### Sky Muster providers (9)

| Provider | SM + SM Plus Premium | SM Plus Premium only | SM only |
|---|---|---|---|
| Activ8me (13 22 88) | x | | |
| Infinet Broadband / IPSTAR (1300 101 414) | x | | |
| IPStar Broadband (1300 477 827) | x | | |
| SkyMesh (1300 735 244) | x | | |
| Cmobile (1300 545 000) | | x | |
| Flip (1300 354 788) | | x | |
| MultiWave Connect (1300 525 800) | | x | |
| Pivotel (1300 882 448) | | x | |
| Bordernet (1300 730 302) | | | x |

### nbn Fixed Wireless providers (18)

1300 EASYISP, Alpha Call, Aus Internet, Aussie Broadband, Australia Online,
Gippsland Broadband, Infinet Broadband, IPStar Broadband, Kinetix Networks,
Lightning IP, Lizzy Internet, Mint Telecom, Neptune Internet, Peak Connect,
Quokka Net, Solitary Technology, Southern Phone, URL Networks.

### Overlap with existing data

Already in repo: `flip`, `aussie` (Aussie Broadband), `neptune`, `solitarytech`, `southernphone`.
New files needed: **8 satellite** (activ8me, bordernet, cmobile, infinnet, ipstar, multiwave, pivotel, skymesh)
+ **13 fixed-wireless** (1300easyisp, alphacall, ausinternet, australiaonline, gippsland, kinetix,
lightningip, lizzy, minttelecom, peakconnect, quokkanet, url, + shared infinnet/ipstar).

### Consumer

`~/src/nbntracker` (Go) copies this repo into `data/` and already has a
`Technology` concept in `internal/handler/matchmaker.go` with values
`"fttp" | "hfc" | "fttc" | "fttn" | "wireless" | "satellite"`. The new field
should align with those names.

## Architecture decisions

- **A1: Provider-level access-tech list.** Add a first-class provider field
  `nbn_access_techs: [...#AccessTech]` — the unit of filtering is the provider,
  not the plan (a site-wide "show me satellite/FW/fixed-line RSPs" filter).
- **A2: Default `*["fixed-line"]`.** Every existing provider at minimum sells
  fixed-line MTM plans; defaulting avoids touching all ~33 existing files and
  makes the filter correct out of the box. Satellite/FW-capable providers are
  tagged explicitly.
- **A3: Extend `#Plan.technology`** with a satellite value so plans themselves
  can be tagged. Add `"satellite"` (consistent with matchmaker naming).
- **A4: Minimal new-provider records first.** New provider files ship with
  identity + `nbn_access_techs` + `notes` only (all other fields are optional/
  defaulted). Plan pricing is a follow-up task (needs per-provider scraping).
- **A5: Optional satellite sub-product flag.** Satellite has two products
  (Sky Muster, Sky Muster Plus Premium) with different plan tiers; capture with
  an optional `satellite_products` field rather than a separate union, to keep
  the schema lean.

## Schema change (schema.cue)

```cue
// Access technologies an RSP sells on the nbn. Drives the site-wide filter.
#AccessTech: "fixed-line" | "fixed-wireless" | "satellite"

#SatelliteProducts: {
	sky_muster:         bool | *false
	sky_muster_premium: bool | *false
}
```

- `#Provider`: add
  ```cue
  nbn_access_techs: [...#AccessTech] | *["fixed-line"]
  satellite?:       #SatelliteProducts
  ```
- `#Plan.technology`: `"nbn" | "nbn-fw" | "satellite" | "5g" | "4g" | *"nbn"`

## Task list

### Phase 1: Schema foundation (nbntracker-data)

- [x] **T1: Schema change + validation**
  - Add `#AccessTech`, `#SatelliteProducts`, provider fields, extend `#Plan.technology`.
  - AC: `cue vet`/`cue export` passes on the whole repo; all existing files
    still compile untouched; README documents the new fields.
  - Files: `schema.cue`, `README.md`

### Phase 2: Tag existing providers

- [x] **T2: Tag existing providers with `nbn_access_techs`**
  - flip (fixed-line, fixed-wireless, satellite), aussie, neptune,
    solitarytech, southernphone, optus, telstra, etc. — only the non-default
    combos need editing.
  - AC: every satellite- or FW-capable existing provider has an explicit tag;
    spot-check 5 files.
  - Files: ~10 existing `*.cue`

### Phase 3: New satellite providers

- [x] **T3: Add 8 Sky Muster provider files**
  - activ8me, bordernet, cmobile, infinnet, ipstar, multiwave, pivotel, skymesh.
  - Note: no separate `pivotel` file — Pivotel = Southern Phone brand, covered by `southernphone.cue`.
  - Identity + `nbn_access_techs: [..., "satellite"]` + `satellite` products
    (per the table above) + website URL from the nbn.co page.
  - AC: `cue export` passes; each file has `nbn_access_techs` containing
    `"satellite"`; URLs verified live.
  - Files: 8 new `*.cue`

### Phase 4: New fixed-wireless providers

- [x] **T4: Add 13 fixed-wireless provider files**
  - 1300easyisp (slug `easyisp` — CUE identifiers can't start with a digit), alphacall,
    ausinternet, australiaonline, gippsland, kinetix, lightningip, lizzy,
    minttelecom, peakconnect, quokkanet, url (+ infinnet/ipstar from T3).
  - Note: `nbn_access_techs` absent in export for plain-struct files is expected;
    default `["fixed-line"]` applies in the Go loader (see README).
  - AC: `cue export` passes; each file tagged `"fixed-wireless"`; 100% of the
    18 RSPs on the nbn.co FW page are covered (incl. the 5 pre-existing).
  - Files: 13 new `*.cue`

### Checkpoint: data repo (done 2026-08-24)
- [x] `cue vet`/`cue export` clean; 48 providers total; 9 satellite-tagged,
      18 fixed-wireless-tagged — matches the nbn.co lists exactly.

### Phase 5: Consumer-side filter (nbntracker app)

- [x] **T5: Sync data copy + expose filter** (done 2026-08-24)
  - Synced `~/src/nbntracker/data/` (48 provider files + schema.cue).
  - `model.Provider.NBNAccessTechs`/`Satellite`, `model.Plan.Technology`,
    `model.TechFilterValues`; loader applies absent = `["fixed-line"]`.
  - `GET /providers?tech=fixed-line|fixed-wireless|satellite` + select in the
    filter card. Verified live: all=48, satellite=9, fixed-wireless=18,
    fixed-line=41, bogus value = no filter.
  - Test: `internal/handler/providers_test.go` (TestFilterProviders_Tech).
  - Files: `internal/model/model.go`, `internal/loader/loader.go`,
    `internal/handler/providers.go`, `internal/ui/templates/providers.html`

- [ ] **T6: Populate plans for new providers (follow-up, optional)**
  - Price/speed data for the 20 new RSPs via scraper (pattern:
    `internal/scraper/solitarytech.go`) or manual entry; tag satellite plans
    with `technology: "satellite"` and data caps.
  - AC: at least the satellite providers have 1+ plan each with correct tier
    and cap.

## Risks and mitigations

| Risk | Impact | Mitigation |
|---|---|---|
| nbn.co provider lists change over time | Med | Store the two source URLs in README; provider records are cheap to add/remove |
| `*["fixed-line"]` default mislabels a niche RSP | Low | T2 explicitly tags all known non-default providers; field is easy to correct |
| New providers have no pricing data | Med | A4: minimal records first, T6 is an explicit follow-up |
| Two copies of the data (repo + `nbntracker/data/`) drift | Med | T5 syncs; consider a make target / script to copy (open question) |
| CUE default `*["fixed-line"]` vs absent-unknown semantics | Low | Documented in schema comment + README |

## Resolved decisions

1. Plan-level value: `"satellite"` (matches the Go app's matchmaker naming).
2. Filter stays at the 3-way split: fixed line / fixed wireless / satellite.
3. Per-plan `technology` tagging for the 20 new providers is still part of T6.
4. No automation: `~/src/nbntracker-data` is the single source of truth (git repo);
   `nbntracker/data/` is refreshed manually when needed (T5 sync step stays).
