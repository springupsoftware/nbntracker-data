package data

providers: superloop: #Provider & {
	name:            "Superloop"
	slug:            "superloop"
	website_url:     "https://www.superloop.com"
	connection_type: "IPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [
		{name: "Everyday", speed_tier: "NBN25", download_mbps: 25, upload_mbps: 10, monthly_price: 72, intro_price: 42, intro_months: 6},
		{name: "Extra Value", speed_tier: "NBN50", download_mbps: 50, upload_mbps: 20, monthly_price: 85, intro_price: 55, intro_months: 6},
		{name: "Superfast Plus", speed_tier: "NBN250", download_mbps: 250, upload_mbps: 100, monthly_price: 99, intro_price: 85, intro_months: 6},
		{name: "Family Max", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 50, monthly_price: 95, intro_price: 65, intro_months: 6},
		{name: "Megaspeed", speed_tier: "NBN1000", download_mbps: 750, upload_mbps: 50, monthly_price: 104, intro_price: 74, intro_months: 6},
		{name: "Lightspeed", speed_tier: "NBN1000", download_mbps: 1000, upload_mbps: 100, monthly_price: 109, intro_price: 79, intro_months: 6},
		{name: "Hyperspeed", speed_tier: "NBN2000", download_mbps: 2000, upload_mbps: 200, monthly_price: 165, intro_price: 145, intro_months: 6},
	]
}
