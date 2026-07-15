package data

providers: leaptel: {
	name:            "Leaptel"
	slug:            "leaptel"
	website_url:     "https://leaptel.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "30-day-notice"
	transit_quality: "Standard"
	ipv6: available:   false
	upstream: enabler: "Superloop"
}
