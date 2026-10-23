package data

providers: telstra: {
	name:            "Telstra"
	slug:            "telstra"
	website_url:     "https://www.telstra.com.au"
	connection_type: "IPoE"
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    true
		monthly_cost: 10.0
	}
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		supports_pd:            true
	}
	voip_available: true
	voip_notes:     "Home Phone plan offered (site nav, checked 2026-09-12)"
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
}
