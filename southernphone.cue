package data

providers: southernphone: {
	name:             "Southern Phone"
	slug:             "southernphone"
	website_url:      "https://www.southernphone.com.au"
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
	nbn_access_techs: ["fixed-line", "fixed-wireless", "satellite"]
	satellite: sky_muster_premium: true
	notes: "Fixed-line and fixed-wireless plans scraped from the Southern Phone products API. FW speeds mix API typical busy-period figures (25/4, 95/10) with nominal nbn TC4 tier speeds (250/20, 400/40) where the API hadn't published typical speeds yet. Satellite (Pivotel brand) plans are no longer publicly priced and are not tracked."
}
