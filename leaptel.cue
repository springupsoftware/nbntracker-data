package data

providers: leaptel: {
	name:             "Leaptel"
	slug:             "leaptel"
	website_url:      "https://leaptel.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 10.0
	}
	accc_performance: {
		report_period:    "2025-Q4"
		latency_ms:       7.8
		latency_busy_ms:  7.9
		page_load_s:      2.3
		page_load_busy_s: 2.3
		outage_pct:       0.14
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		supports_pd:            true
	}
	upstream: enabler: "Superloop"
	nbn_access_techs: ["fixed-line"]
}
