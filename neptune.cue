package data

providers: neptune: {
	name:             "Neptune"
	slug:             "neptune"
	website_url:      "https://www.neptune.net.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "ACT"]
	ipv6: {
		available:              true
		prefix_delegation_size: 48
		assignment:             "dynamic"
		default_enabled:        true
		supports_pd:            true
	}
	upstream: enabler: "Superloop"
	nbn_access_techs: ["fixed-line", "fixed-wireless"]
}
