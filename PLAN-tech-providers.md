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
- [x] **T5** — see checkpoint below.
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

- [x] **T6: Populate plans for the 19 new RSPs** — detailed plan below. (T6.0/T6.1/T6.2/T6.4 done 2026-09-01; T6.3 deferred. 16 of 19 providers got plans; 3 unreachable — see notes.)

## T6 detailed plan

### Objective

Give the 19 new RSPs (7 satellite, 12 fixed-wireless) plan data with correct
`technology` tags and data caps, so the tech-filter results show real plans
with prices instead of empty provider rows.

### Key findings (from code review, 2026-08-24)

- **Writer round-trip hazard (must fix first):** `internal/scraper/writer.go`
  round-trips `slug.cue` through the `providerFile` struct and re-serialises
  it. `providerFile` lacks `nbn_access_techs`/`satellite` and `planFile` lacks
  `technology` — running the scraper against any of these providers would
  **silently delete the new fields**.
- Plan data lives in `<slug>_plans.cue` (`slug: [{…}]`); loader prefers it
  over embedded plans.
- Scrapers: `internal/scraper/<slug>.go` + registration in `isps.go` `All()`;
  `cmd/scraper -data ~/src/nbntracker-data -isp <slug> -skip-push`. Existing
  providers with scrapers: flip, aussie, neptune, solitarytech, southernphone
  (all fixed-line plans — their satellite/FW plans are NOT captured today).
- `modelPlansToFile` drops plans with `upload_mbps == 0` and merges on
  (download, upload) — fine for satellite/FW plans.
- `#Plan` requires `monthly_price > 0` — plans without published prices cannot
  be modelled; only add plans with visible prices.

### Tasks

- [x] **T6.0: Writer round-trip for new fields (prerequisite)**
  - `writer.go`: add `NBNAccessTechs []string` + `Satellite *satelliteFile`
    (new struct) to `providerFile`; add `Technology string` to `planFile`;
    `modelPlansToFile`: incoming `p.Technology` wins, else preserve existing
    file value.
  - Regression: run `go run ./cmd/scraper -data ~/src/nbntracker-data
    -isp flip -skip-push`; `git diff` in nbntracker-data must NOT remove
    `nbn_access_techs`/`satellite` from `flip.cue`/`southernphone.cue` etc.
  - AC: `go test ./...` passes; regression diff clean.
  - Files: `internal/scraper/writer.go`, `internal/scraper/writer_test.go`

- [x] **T6.1: Satellite plans (7 providers, manual entry)** — 8 of 9 providers (bordernet.com.au unreachable 2026-08-24, noted). Plans in `*_plans.cue`, `technology: "satellite"`.
  - activ8me, bordernet, cmobile, infinnet, ipstar, multiwave, skymesh
    (+ flip and southernphone satellite plans if published).
  - Source each provider's SM / SM+PP pricing page (+ CIS where linked);
    record source URL + access date in the provider `notes`.
  - Every plan: `technology: "satellite"`, `data_cap_gb` set (SM plans are
    capped; include the unlimited tier if offered), tiers within nbn limits
    (SM ≤ NBN100, SM+PP ≤ NBN50).
  - AC: `cue export` clean; each of the 7 providers has ≥1 satellite plan;
    all satellite plans have a data cap or an explicit unlimited tier.
  - Files: 7–9 new `<slug>_plans.cue` + note tweaks in `<slug>.cue`

- [x] **T6.2: Fixed-wireless plans (12 providers, manual entry)** — 9 of 12. Unreachable/skipped: alphacall (prices behind address-check JS), gippsland (site suspended), kinetix (site server error) — all noted in their provider files. New `NBN400` speed tier added to the schema for the nbn TC4 400/40 tier.
  - easyisp, alphacall, ausinternet, australiaonline, gippsland, kinetix,
    lightningip, lizzy, minttelecom, peakconnect, quokkanet, url.
  - Source each provider's nbn FW pricing page; only plans with published
    prices.
  - Every plan: `technology: "nbn-fw"` (FW plans are typically unlimited —
    leave `data_cap_gb` absent).
  - AC: `cue export` clean; each of the 12 providers has ≥1 FW plan.
  - Files: 12 new `<slug>_plans.cue`

- [x] **T6.3: (Optional follow-up) Scrapers for API-friendly providers** — done for 4 providers: ausinternet, minttelecom, quokkanet, url (all static HTML, no browser; shared thegem-table parser for quokkanet/url; fixture tests). Not done: lightningip (plan prices loaded via JS), flip/southernphone satellite tables (could be added later).
  - Only where a stable JSON API exists (check per provider; most small
    regional RSPs don't have one). Pattern: `internal/scraper/flip.go`.
  - Register in `isps.go`; tag plans with `Technology` in the scraper.
  - Do NOT register a scraper for a provider whose page is JS-heavy —
    manual entry + `notes` is more maintainable.

- [x] **T6.4: Verification pass** — `cue vet` clean; `go build`/`go test` clean; live server: `/providers?tech=satellite` lists all 9 nbn.co SM RSPs, `?tech=fixed-wireless` all 18; plan counts on the providers page and satellite/FW plan prices on the home page verified; `metadata.json` bumped.
  - `cue vet`/`cue export` clean; `go test ./...` passes.
  - Loader smoke: every one of the 19 providers has ≥1 plan; satellite plans
    all `technology: "satellite"`.
  - Live: `/providers?tech=satellite` and `?tech=fixed-wireless` rows show
    prices on the home page; bump `metadata.json`.

### Checkpoints

- After T6.0: regression diff clean before any plan data lands.
- After T6.1: satellite filter shows priced plans (commit 1).
- After T6.2: FW filter shows priced plans (commit 2).
- After T6.4: full verification (commit 3, incl. metadata bump).

### Risks

| Risk | Impact | Mitigation |
|---|---|---|
| Writer round-trip deletes new fields | High | T6.0 is a hard prerequisite + regression check |
| Price research for 19 small RSPs is slow/error-prone | Med | Phase satellite-first; source URL + date in `notes`; one commit per phase |
| Some RSPs don't publish prices | Med | Skip those plans (schema requires a price); note in `notes` |
| Stale prices drift from provider sites | Low | `metadata.json` timestamp; scrapers in T6.3 where feasible |

### Resolved decisions (T6)

1. `cis_url`: skip for T6.
2. Flip/southernphone satellite plans: include in T6.1 (alongside their
   existing fixed-line plans).

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

---

# T7: Extend flip + southernphone scrapers to satellite and fixed-wireless plans

## Overview

Extend the two existing API-based scrapers so they also capture the
non-fixed-line plans. Recon (2026-09-02) found:

- **flip** — the plans API already exposes satellite plans via
  `?Type=SkyMusterPlus` (3 plans: Sky 25/50/100, $59.90/$69.90/$79.90 with
  6-month $49/$59/$74 promos, UL 5, per-plan `CIS` URL). **Flip does not sell
  nbn fixed wireless** (not on nbn.co's FW RSP list; `nbn_access_techs` is
  `[fixed-line, satellite]`) — the FW part of the ask is N/A for flip.
- **southernphone** — the existing `get-all-products` API contains 4
  `nbn_technology_type: WIRELESS` products (currently skipped by the
  scraper): $59 (typical 25/4), $79 (typical 95/10), $89 Fast (no speed
  published; `speed_tier_availability: "FW Home Fast"`), $95 Superfast (no
  speed; `"FW Superfast"`), each with a per-product `cis_link`.
  **Satellite is not in this API** and is no longer publicly priced:
  pivotel.com.au/nbn-sky-muster-satellite now 301s to the home page,
  pivotel.com.au/plans/nbn-sky-muster is enquiry-only ("contact an account
  manager"), and southernphone's sitemap has no satellite plans page.
  The T6.1 hand-entered Pivotel SMPP plans therefore stay **manual**.

## Architecture decisions

1. **Writer merge key becomes (download, upload, technology)** —
   southernphone sells fixed-line "nbn Basic" 25/4 $59 and FW "nbn Fixed
   Wireless" 25/4 $59; with the current (dl, ul) key the writer would merge
   them into one plan. No existing data has same-speed-different-tech
   duplicates, so the change is behaviour-preserving today.
2. **Flip satellite speeds come from the API `Type` field** ("nbn 25" → 25),
   not `EveningSpeed` — for satellite that field is a *typical evening*
   value (19 for the 25 plan), unlike fixed-line where it is nominal.
3. **Southernphone FW speeds**: keep the API's typical speeds where present
   (25/4, 95/10 — consistent with the existing fixed-line plans' convention);
   where absent, map `speed_tier_availability` to nbn TC4 nominal speeds
   (FW Home Fast → 250/20, FW Superfast → 400/40). Unknown tier values are
   skipped (never guessed).
4. **The fetched list is authoritative** — `WriteCUE` replaces the CUE
   plan list with whatever `FetchPlans` returns; existing plans the
   scraper doesn't return are dropped (this is how southernphone's
   manual satellite entries get removed per decision 2 in "Resolved
   decisions"). Rule: every `FetchPlans` must return ALL of the
   provider's plans across all technologies, or they will be deleted on
   the next run.

## Task list

### T7.0: Writer merge key includes technology (foundation) ✅ done

**Description:** Add `Technology string` to `planKey` in writer.go and use
it in the `byKey` map (build + lookup + preserve). Add a regression test:
two existing plans with same (dl, ul) but different `technology` are both
preserved after a scraper run that returns neither.

**Acceptance:**
- [ ] `planKey` is (dl, ul, technology); merge uses it
- [ ] Regression test passes; full `go test ./...` green

**Files:** `internal/scraper/writer.go`, `internal/scraper/writecue_test.go`
**Scope:** S · **Deps:** none

### T7.1: flip satellite plans from the existing API ✅ done

**Description:** In flip.go, after fetching `Type=Standard`, fetch
`Type=SkyMusterPlus` and map each plan: name, dl from the `Type` field
("nbn 25" → 25; skip the plan if unparseable), ul from `UploadSpeed`,
price from `MonthlyCost`, promo from `SpecialCost` + `PromoPeriod`,
`cis_url` from `CIS`, `technology: "satellite"`. Return the combined list.
The API shape is identical to the Standard response, so the existing JSON
structs are reused.

**Acceptance:**
- [ ] Scraper run rewrites the 3 flip satellite plans (Sky 25/50/100) with
      current prices and adds `cis_url`; the 6 fixed-line plans are unchanged
- [ ] Second run is idempotent (`unchanged — skipping`)
- [ ] `cue vet` clean on the data repo

**Files:** `internal/scraper/flip.go` (+ a small unit test for the
`Type`-field speed parse)
**Scope:** S · **Deps:** T7.0

### T7.2: southernphone fixed-wireless plans from the existing API ✅ done

**Description:** Remove the `WIRELESS` skip in southernphone.go. For
`layout: nbn` products: technology = `"nbn-fw"` when
`nbn_technology_type` contains WIRELESS, else unset. Speeds: parse
`typical_speed` as today; if it doesn't match the speed regex, fall back to
a `speed_tier_availability` → (dl, ul) map (`FW Home Fast` → 250/20,
`FW Superfast` → 400/40; unmapped values skip the plan with a logged
warning). `cis_url` from per-product `cis_link` when present (fall back to
the existing hard-coded CIS for fixed-line).

**Acceptance:**
- [ ] Scraper run writes 4 FW plans: 25/4 $59, 95/10 $79, 250/20 $89,
      400/40 $95 — all `technology: "nbn-fw"` with `cis_url`
- [ ] Fixed-line plans and the 3 manual satellite plans are unchanged
- [ ] Second run is idempotent; `cue vet` clean

**Files:** `internal/scraper/southernphone.go` (+ unit test for the tier
fallback map)
**Scope:** S–M · **Deps:** T7.0

### T7.3: Data run + notes + docs ✅ done

**Description:** Run both scrapers against `nbntracker-data`, review the
diff, update the `notes` field in flip.cue / southernphone.cue (sources are
now the APIs; note the southernphone satellite plans remain manual from
pivotel.com.au, accessed 2026-08-24 and possibly stale), bump metadata,
sync `nbntracker/data/`, commit both repos. Update this plan doc.

**Acceptance:**
- [ ] `cue vet` + `cue export` clean; app `go test` green
- [ ] Live server: `/providers?tech=satellite` still 9, `?tech=fixed-wireless`
      still 18; home page shows southernphone FW + flip satellite plans at
      their tiers
- [ ] Both repos committed; data copy synced

**Files:** data repo (flip.cue, southernphone.cue, *_plans.cue,
metadata.json, this file), `nbntracker/data/` sync
**Scope:** S · **Deps:** T7.1, T7.2

### Checkpoints

- After T7.0: `go test ./...` green, writer behaviour unchanged for all
  existing scrapers (spot-run one, e.g. `ausinternet`, → `unchanged`).
- After T7.1 + T7.2: both providers' plan files match the acceptance lists
  above; fixed-line and manual satellite plans byte-identical.
- After T7.3: full verification pass (same as T6.4).

## Risks

| Risk | Impact | Mitigation |
|---|---|---|
| flip `Type` field format changes (e.g. no longer "nbn 25") | Med | Parse defensively; skip unparseable plan with an error, don't guess |
| southernphone adds more WIRELESS tiers than the fallback map knows | Med | Unknown `speed_tier_availability` → skip + warn; visible in scraper output |
| Mixed speed convention in southernphone FW (2 typical + 2 nominal) | Low | Note it in the provider `notes`; each value is the best published figure |
| Southernphone satellite plans silently stale | Med | Flagged in notes + open question below; writer preserves them so they at least don't vanish |
| planKey change affects an unknown consumer | Low | `planKey` is private to writer.go; grep-verified single use site |

## Resolved decisions (T7)

1. Flip FW: N/A — flip is not an nbn fixed wireless RSP. Confirmed.
2. Southernphone satellite: **remove** the T6.1 manual Pivotel SMPP plan
   entries (no longer priced anywhere reachable). The provider keeps its
   `satellite` access-tech tag; only the plan entries go.
3. FW speed convention: mixed typical/nominal is acceptable, with a note
   in the provider `notes`.
