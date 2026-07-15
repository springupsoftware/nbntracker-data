package data

providers: telstra: {
	name:            "Telstra"
	slug:            "telstra"
	website_url:     "https://www.telstra.com.au"
	connection_type: "PPPoE"
	cgnat:           true
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	transit_quality: "Standard"
	ipv6: available: false
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
}
