package data

providers: launtel: {
	name:            "Launtel"
	slug:            "launtel"
	website_url:     "https://launtel.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "paid_static_ip"
	static_ip: {
		available:    true
		monthly_cost: 4.65
		notes: "Options: $0.15 per day for static IP or $100 refundable deposit"
	}
	billing_policy: "pro-rata"
	ipv6: {
		available:              true
		prefix_delegation_size: 48
		supports_pd:            true
		default_enabled:        true
	}
	upstream: {}
}
