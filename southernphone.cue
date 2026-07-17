package data

providers: southernphone: {
	name:            "Southern Phone"
	slug:            "southernphone"
	website_url:     "https://www.southernphone.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	ipv6: available:   false
	upstream: enabler: "Telcoinabox"
}
