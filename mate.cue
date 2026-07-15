package data

providers: mate: {
	name:            "Mate"
	slug:            "mate"
	website_url:     "https://www.letsbemates.com.au"
	connection_type: "PPPoE"
	cgnat:           true
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	ipv6: available: false
	upstream: {}
}
