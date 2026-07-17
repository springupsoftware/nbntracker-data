package data

providers: fubar: {
	name:            "IT'S FUBAR"
	slug:            "fubar"
	website_url:     "https://www.itsfubar.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	billing_policy: "end-of-cycle"
	ipv6: available: true
	upstream: {}
}
