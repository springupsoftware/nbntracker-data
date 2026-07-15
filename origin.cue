package data

providers: origin: {
	name:             "Origin Energy"
	slug:             "origin"
	website_url:      "https://www.originenergy.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "paid_static_ip"
	support_location: "Hybrid"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	notice_period_days: 30
	billing_policy:     "30-day-notice"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	transit_quality: "Standard"
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		default_enabled:        true
		supports_pd:            true
	}
	upstream: enabler: "Superloop"
}
