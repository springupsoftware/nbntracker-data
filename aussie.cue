package data

providers: aussie: {
	name:            "Aussie Broadband"
	slug:            "aussie"
	website_url:     "https://www.aussiebroadband.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 5
	}
	billing_policy:  "pro-rata"
	ipv6: available: false
	upstream: {
		backhaul:         "Own"
		domestic_transit: "Own"
	}
}
