package data

providers: leaptel: {
	name:            "Leaptel"
	slug:            "leaptel"
	website_url:     "https://leaptel.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 10
	}
	billing_policy:  "pro-rata"
	ipv6: available:   true
	upstream: enabler: "Superloop"
}
