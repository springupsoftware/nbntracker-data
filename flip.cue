package data

providers: flip: {
	name:             "Flip"
	slug:             "flip"
	website_url:      "https://flipconnect.com.au"
	nbn_access_techs: ["fixed-line", "satellite"]
	satellite: sky_muster_premium: true
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "unknown"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 1.98
	}
	notice_period_days: 30
	billing_policy:     "30-day-notice"
	ipv6: available:   false
	upstream: enabler: "Swoop"
}
