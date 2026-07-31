package data

providers: mate: {
	name:             "Mate"
	slug:             "mate"
	website_url:      "https://www.letsbemates.com.au"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "paid_static_ip"
	support_location: "Australia"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		supports_pd:            true
	}
	upstream: {}
}
