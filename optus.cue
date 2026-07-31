package data

providers: optus: {
	name:             "Optus"
	slug:             "optus"
	website_url:      "https://www.optus.com.au"
	connection_type:  "IPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	support_location: "Hybrid"
	static_ip: {
		available:    true
		monthly_cost: 10.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:       true
		assignment:      "dynamic"
		default_enabled: true
		supports_pd:     false
	}
	upstream: backhaul: "Own"
}
