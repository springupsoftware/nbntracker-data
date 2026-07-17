package data

providers: iinet: {
	name:            "iiNet"
	slug:            "iinet"
	website_url:     "https://www.iinet.net.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	ipv6: available:    false
	upstream: backhaul: "Own"
}
