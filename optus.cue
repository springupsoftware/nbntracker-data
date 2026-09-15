package data

providers: optus: {
	name:             "Optus"
	slug:             "optus"
	website_url:      "https://www.optus.com.au"
	connection_type:  "IPoE"
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
	voip_available: true
	voip_notes:     "Home phone service with home internet; optus.com.au/internet/home-phone (checked 2026-09-12)"
	upstream: backhaul: "Own"
}
