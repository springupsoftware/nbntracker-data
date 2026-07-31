package data

providers: carboncomms: {
	name:             "Carbon Comms"
	slug:             "carboncomms"
	website_url:      "https://carboncomms.com.au"
	connection_type:  "IPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW"]
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		default_enabled:        true
		supports_pd:            true
	}
	upstream: enabler: "Aussie Broadband"
}
