package data

providers: belong: #Provider & {
	name:            "Belong"
	slug:            "belong"
	website_url:     "https://www.belong.com.au"
	connection_type: "IPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "unavailable"
	plans: [
		{name: "Starter", speed_tier: "NBN25", download_mbps: 25, upload_mbps: 10, monthly_price: 55},
		{name: "Premium", speed_tier: "NBN100", download_mbps: 100, upload_mbps: 20, monthly_price: 65},
		{name: "Standard Plus", speed_tier: "NBN50", download_mbps: 50, upload_mbps: 20, monthly_price: 65},
		{name: "Ultrafast", speed_tier: "NBN1000", download_mbps: 1000, upload_mbps: 100, monthly_price: 80},
		{name: "Fast", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 50, monthly_price: 65},
	]
}
