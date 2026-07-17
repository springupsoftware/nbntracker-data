package data

providers: superloop: {
	name:            "Superloop"
	slug:            "superloop"
	website_url:     "https://www.superloop.com"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:    false
	upstream: backhaul: "Own"
}
