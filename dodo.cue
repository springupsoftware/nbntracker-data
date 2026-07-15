package data

providers: dodo: {
	name:             "Dodo"
	slug:             "dodo"
	website_url:      "https://www.dodo.com"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Offshore"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	billing_policy: "end-of-cycle"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	transit_quality: "Standard"
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		supports_pd:            true
	}
	upstream: backhaul: "Vocus"
}
