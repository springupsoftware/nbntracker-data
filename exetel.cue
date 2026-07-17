package data

providers: exetel: {
	name:            "Exetel"
	slug:            "exetel"
	website_url:     "https://www.exetel.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "30-day-notice"
	ipv6: available: false
	upstream: {}
}
