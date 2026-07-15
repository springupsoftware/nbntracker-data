package data

providers: tangerine: {
	name:            "Tangerine Telecom"
	slug:            "tangerine"
	website_url:     "https://www.tangerine.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	ipv6: available:   false
	upstream: enabler: "Superloop"
}
