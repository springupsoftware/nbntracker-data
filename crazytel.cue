package data

providers: crazytel: {
	name:             "Crazytel"
	slug:             "crazytel"
	website_url:      "https://crazytel.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "paid_static_ip"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	plan_change_period: "anytime"
	voip_available:     true
	voip_notes:         "Crazytel Home Craycray VoIP from $8/month; sold separately, not bundled (checked 2026-11)"
	nbn_access_techs: ["fixed-line", "fixed-wireless"]
	notes: "Prepaid; no lock-in. Shared CGNAT address included; static IPv4 optional at $5/month. CrazyNBN and SuperCrazy NBN are standalone products."
}
