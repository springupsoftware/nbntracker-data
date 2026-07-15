package data

providers: iprimus: {
	name:            "iPrimus"
	slug:            "iprimus"
	website_url:     "https://www.iprimus.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "30-day-notice"
	ipv6: available:    false
	upstream: backhaul: "Vocus"
}
