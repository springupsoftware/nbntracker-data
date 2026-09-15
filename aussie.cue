package data

providers: aussie: {
	name:             "Aussie Broadband"
	slug:             "aussie"
	website_url:      "https://www.aussiebroadband.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		default_enabled:        true
		supports_pd:            true
	}
	voip_available: true
	voip_notes:     "VoIP add-on and bundled VoIP seniors plan; evidence: cisd/aussie/residential-voip-cis.pdf, res-voip-only-nbn-cis.pdf (checked 2026-09-12)"
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
	nbn_access_techs: ["fixed-line", "fixed-wireless"]
}
