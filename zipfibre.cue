package data

providers: zipfibre: {
	name:            "ZipFibre"
	slug:            "zipfibre"
	website_url:     "https://www.zipfibre.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		default_enabled:        true
		supports_pd:            true
	}
	upstream: backhaul: "Vocus"
}
