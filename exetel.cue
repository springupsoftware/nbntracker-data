package data

providers: exetel: #Provider & {
	name:            "Exetel"
	slug:            "exetel"
	website_url:     "https://www.exetel.com.au"
	connection_type: "IPoE"
	cgnat:      true
	cgnat_opt_out:   "paid_static_ip"
	static_ip: {
		available:    false
		monthly_cost: 5.0
	}
	plans: [{
		name:          "One Plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 8e+1
		category:      "residential"
	}]
}
