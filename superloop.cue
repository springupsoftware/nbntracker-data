package data

providers: superloop: {
	name:            "Superloop"
	slug:            "superloop"
	website_url:     "https://www.superloop.com"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "paid_static_ip"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	billing_policy:  "30-day-notice"
	transit_quality: "Standard"
	ipv6: available:    false
	upstream: backhaul: "Own"
}
