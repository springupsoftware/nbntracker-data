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
	ipv6: available: false
	voip_available: true
	voip_notes:     "Home Phone plan offered (site nav, checked 2026-09-12)"
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
}
