package data

providers: carboncomms: {
	name:            "Carbon Comms"
	slug:            "carboncomms"
	website_url:     "https://carboncomms.com.au"
	connection_type: "IPoE"
	cgnat:           false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	transit_quality: "Standard"
	ipv6: available:   false
	upstream: enabler: "Aussie Broadband"
}
