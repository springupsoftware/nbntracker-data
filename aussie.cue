package data

providers: aussie: {
	name:            "Aussie Broadband"
	slug:            "aussie"
	website_url:     "https://www.aussiebroadband.com.au"
	connection_type: "PPPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "pro-rata"
	ipv6: available: false
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
}
