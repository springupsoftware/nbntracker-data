package data

providers: tpg: {
	name:            "TPG"
	slug:            "tpg"
	website_url:     "https://www.tpg.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "30-day-notice"
	ipv6: available:    false
	upstream: backhaul: "Own"
}
