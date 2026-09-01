package data

providers: southernphone: {
	name:             "Southern Phone"
	slug:             "southernphone"
	website_url:      "https://www.southernphone.com.au"
	nbn_access_techs: ["fixed-line", "fixed-wireless", "satellite"]
	satellite: sky_muster_premium: true
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 7.5
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	ipv6: {
		available:   false
		assignment:  "dynamic"
		supports_pd: true
	}
	upstream: enabler: "Telcoinabox"
	notes:            "Satellite plans are the Pivotel brand (pivotel.com.au). SMPP plan prices from pivotel.com.au/nbn-sky-muster-satellite (accessed 2026-08-24)."
}
