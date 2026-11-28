package data

providers: futurebroadband: {
	name:             "Future Broadband"
	slug:             "futurebroadband"
	website_url:      "https://futurebroadband.com.au"
	connection_type:  "unknown"
	cgnat_opt_out:    "N/A"
	support_location: "Australia"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	notice_period_days: 14
	billing_policy:     "30-day-notice"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:   false
		assignment:  "dynamic"
		supports_pd: true
	}
	upstream: {}
	nbn_access_techs: ["fixed-line"]
}
