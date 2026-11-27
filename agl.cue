package data

providers: agl: {
	name:             "AGL"
	slug:             "agl"
	website_url:      "https://www.agl.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "paid_static_ip"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 10.0
	}
	plan_change_period: "anytime"
	voip_available:     true
	voip_notes:         "AGL Home Phone from $10/month; optional add-on requiring a compatible modem (checked 2026-11)"
	upstream: enabler: "Aussie Broadband"
	nbn_access_techs: ["fixed-line", "fixed-wireless"]
	notes: "Advertised plan prices include the AGL energy bundle discount; add $15/month without AGL energy. Static IP is $10/month. Fixed Wireless Fast is advertised but is not returned by the public catalogue API (address qualification required)."
}
