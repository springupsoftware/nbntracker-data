package data

providers: kogan: {
	name:            "Kogan Internet"
	slug:            "kogan"
	website_url:     "https://www.koganinternet.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:   false
	upstream: enabler: "TPG"
}
