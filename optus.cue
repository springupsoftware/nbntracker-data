package data

providers: optus: {
	name:            "Optus"
	slug:            "optus"
	website_url:     "https://www.optus.com.au"
	connection_type: "IPoE"
	cgnat:           false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	ipv6: available:    false
	upstream: backhaul: "Own"
}
