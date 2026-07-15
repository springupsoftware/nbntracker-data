package data

providers: neptune: {
	name:            "Neptune"
	slug:            "neptune"
	website_url:     "https://www.neptune.net.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	transit_quality: "Standard"
	ipv6: available:   true
	upstream: enabler: "Aussie Broadband"
}
