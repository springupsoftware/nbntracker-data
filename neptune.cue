package data

providers: neptune: {
	name:            "Neptune"
	slug:            "neptune"
	website_url:     "https://www.neptune.net.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "30-day-notice"
	transit_quality: "Standard"
	ipv6: available:   false
	upstream: enabler: "Aussie Broadband"
}
