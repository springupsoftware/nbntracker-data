package data

providers: swoop: {
	name:            "Swoop"
	slug:            "swoop"
	website_url:     "https://www.swoop.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "30-day-notice"
	ipv6: available:   false
	upstream: enabler: "Aussie Broadband"
}
