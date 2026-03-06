package data

providers: exetel: #Provider & {
	name:            "Exetel"
	slug:            "exetel"
	website_url:     "https://www.exetel.com.au"
	connection_type: "IPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [
		{name: "One Plan", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 50, monthly_price: 80},
	]
}
