package data

providers: zipfibre: {
	name:            "ZipFibre"
	slug:            "zipfibre"
	website_url:     "https://www.zipfibre.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:    false
	upstream: backhaul: "Vocus"
}
