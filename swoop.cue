package data

providers: swoop: {
	name:             "Swoop"
	slug:             "swoop"
	website_url:      "https://www.swoop.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 5.5
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
	voip_notes:     "VoIP add-on for internet customers; evidence: cisd/swoop/cis-voip.pdf (checked 2026-09-12)"
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
}
