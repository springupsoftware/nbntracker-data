package data

providers: telstra: {
	name:            "Telstra"
	slug:            "telstra"
	website_url:     "https://www.telstra.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "paid_static_ip"
	static_ip: {
		available:    true
		monthly_cost: 10
	}
	ipv6: {
	      available: true
	      prefix_delegation_size: 56
	}

	voip_available: true
	voip_notes:     "Home Phone plan offered (site nav, checked 2026-09-12)"
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
	state: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
}
