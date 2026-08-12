package data

providers: solitarytech: {
	name:            "Solitary Technology"
	slug:            "solitarytech"
	website_url:     "https://solitarytech.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 0.0
		notes: "Available on request"
	}
	ipv6: {
		available:  true
		prefix_delegation_size: 56
		default_enabled: true
	      
	}
	upstream: enabler: "Superloop"
	support_location: "Australia"
}
