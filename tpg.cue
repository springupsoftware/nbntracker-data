package data

providers: tpg: #Provider & {
	name:            "TPG"
	slug:            "tpg"
	website_url:     "https://www.tpg.com.au"
	connection_type: "PPPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [
		{name: "NBN100", speed_tier: "NBN100", download_mbps: 97, upload_mbps: 17, monthly_price: 94.99, intro_price: 64.99, intro_months: 6},
		{name: "NBN12", speed_tier: "NBN12", download_mbps: 12, upload_mbps: 1, monthly_price: 74.99, intro_price: 54.99, intro_months: 6},
		{name: "NBN25", speed_tier: "NBN25", download_mbps: 25, upload_mbps: 4, monthly_price: 76.99, intro_price: 56.99, intro_months: 6},
		{name: "NBN50", speed_tier: "NBN50", download_mbps: 50, upload_mbps: 17, monthly_price: 84.99, intro_price: 64.99, intro_months: 6},
		{name: "NBN500", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 42, monthly_price: 94.99, intro_price: 64.99, intro_months: 6},
		{name: "NBN Home Superfast", speed_tier: "NBN1000", download_mbps: 740, upload_mbps: 42, monthly_price: 99.99, intro_price: 79.99, intro_months: 6},
		{name: "NBN Home Ultrafast", speed_tier: "NBN1000", download_mbps: 820, upload_mbps: 85, monthly_price: 109.99, intro_price: 89.99, intro_months: 6},
	]
}
