package data

providers: iprimus: {
	name:             "iPrimus"
	slug:             "iprimus"
	website_url:      "https://www.iprimus.com.au"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Offshore"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	notice_period_days: 30
	billing_policy:     "30-day-notice"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		supports_pd:            true
	}
	upstream: backhaul: "Vocus"
	nbn_access_techs: ["fixed-line"]
}
