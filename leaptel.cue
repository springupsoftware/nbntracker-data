package data

providers: leaptel: #Provider & {
	name:            "Leaptel"
	slug:            "leaptel"
	website_url:     "https://leaptel.com.au"
	connection_type: "IPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [
		{name: "Pronto", speed_tier: "NBN25", download_mbps: 25, upload_mbps: 10, monthly_price: 69.95, intro_price: 49.95, intro_months: 6},
		{name: "Accelerated", speed_tier: "NBN50", download_mbps: 50, upload_mbps: 20, monthly_price: 82.95, intro_price: 74.95, intro_months: 6},
		{name: "Full Throttle", speed_tier: "NBN100", download_mbps: 100, upload_mbps: 20, monthly_price: 92.95, intro_price: 79.95, intro_months: 12},
		{name: "Fast", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 50, monthly_price: 92.95, intro_price: 79.95, intro_months: 12},
		{name: "Ultrafast", speed_tier: "NBN1000", download_mbps: 1000, upload_mbps: 100, monthly_price: 114, intro_price: 99, intro_months: 12},
		{name: "Hyperfast HFC", speed_tier: "NBN2000", download_mbps: 2000, upload_mbps: 100, monthly_price: 165, intro_price: 155, intro_months: 12},
		{name: "Hyperfast FTTP", speed_tier: "NBN2000", download_mbps: 2000, upload_mbps: 200, monthly_price: 165, intro_price: 155, intro_months: 12},
	]
}
