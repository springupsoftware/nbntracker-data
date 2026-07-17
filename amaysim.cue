package data

providers: amaysim: {
	name:            "Amaysim"
	slug:            "amaysim"
	website_url:     "https://www.amaysim.com.au"
	connection_type: "IPoE"
	cgnat:           false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:   false
	upstream: enabler: "Optus"
}
