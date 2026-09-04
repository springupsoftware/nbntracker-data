package data

providers: solitarytech: {
	name:             "Solitary Technology"
	slug:             "solitarytech"
	website_url:      "https://solitarytech.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	ipv6: {
		available:              true
		prefix_delegation_size: 48
		default_enabled:        true
		supports_pd:            true
	}
	upstream: enabler: "Superloop"
	nbn_access_techs: ["fixed-line", "fixed-wireless"]
}
