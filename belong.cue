package data

providers: belong: {
	name:             "Belong"
	slug:             "belong"
	website_url:      "https://www.belong.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "unavailable"
	support_location: "Hybrid"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "end-of-cycle"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:       true
		assignment:      "dynamic"
		default_enabled: true
		supports_pd:     false
		notes:           "Telstra-backed network; single /64 via SLAAC, no prefix delegation"
	}
	upstream: {
		backhaul:         "Telstra"
		domestic_transit: "Telstra"
	}
}
