package data

providers: optus: {
	name:            "Optus"
	slug:            "optus"
	website_url:     "https://www.optus.com.au"
	connection_type: "PPPoE"
	cgnat:           true
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	transit_quality: "Standard"
	ipv6: available:    false
	upstream: backhaul: "Own"
}
