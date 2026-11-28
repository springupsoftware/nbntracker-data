package data

providers: iinet: {
	name:             "iiNet"
	slug:             "iinet"
	website_url:      "https://www.iinet.net.au"
	connection_type:  "PPPoE"
	cgnat_opt_out:    "N/A"
	support_location: "Offshore"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		supports_pd:            true
	}
	upstream: backhaul: "Own"
	nbn_access_techs: ["fixed-line"]
}
