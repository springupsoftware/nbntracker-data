# nbntracker-data
Cue files with NBN plan data for [nbntracker.au](https://nbntracker.au)

This repo is the **single source of truth** for provider data.
`~/src/nbntracker/data/` is a copy refreshed manually when needed.

## Layout

- `schema.cue` — CUE schema (`#Provider`, `#Plan`, …)
- `<slug>.cue` — provider metadata (static, human-edited)
- `<slug>_plans.cue` — plan array (auto-updated by the scraper)
- `metadata.json` — `last_updated` timestamp

## Access technology (`nbn_access_techs`)

Providers carry an optional list of the nbn access technologies they sell:

```cue
nbn_access_techs: [...#AccessTech]   // "fixed-line" | "fixed-wireless" | "satellite"
satellite?: { sky_muster: bool, sky_muster_premium: bool }
```

- **Absent = `["fixed-line"]`** (the CUE default only materialises for files
  constrained by `#Provider`; the nbntracker loader applies the same default
  to plain struct files).
- Tag a provider explicitly when it sells fixed wireless and/or satellite.
- Individual plans can be tagged with `technology: "nbn" | "nbn-fw" |
  "satellite" | "5g" | "4g"` (default `"nbn"`).

### Authoritative RSP lists (re-verify before adding/removing providers)

- Sky Muster: <https://www.nbnco.com.au/check-address/choose-a-provider-sky-muster>
- Fixed Wireless: <https://www.nbnco.com.au/residential/upgrades/more-fixed-wireless/fixed-wireless-providers>

## Validating

```sh
cue vet *.cue
cue export .
```
