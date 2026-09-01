package data

providers: aussie: {
	name:             "Aussie Broadband"
	slug:             "aussie"
	website_url:      "https://www.aussiebroadband.com.au"
	nbn_access_techs: ["fixed-line", "fixed-wireless"]
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
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
}
