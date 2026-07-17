package data

providers: tangerine: {
	name:            "Tangerine Telecom"
	slug:            "tangerine"
	website_url:     "https://www.tangerine.com.au"
	connection_type: "PPPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:   false
	upstream: enabler: "Superloop"
}
