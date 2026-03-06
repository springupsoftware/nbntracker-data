package data

providers: more: #Provider & {
	name:            "More Telecom"
	slug:            "more"
	website_url:     "https://www.more.com.au"
	connection_type: "PPPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [
		{name: "Value", speed_tier: "NBN25", download_mbps: 25, upload_mbps: 10, monthly_price: 78, intro_price: 63, intro_months: 36},
		{name: "Value Plus", speed_tier: "NBN50", download_mbps: 50, upload_mbps: 20, monthly_price: 95, intro_price: 80, intro_months: 36},
		{name: "Fast Max", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 50, monthly_price: 100, intro_price: 85, intro_months: 36},
		{name: "Ultrafast", speed_tier: "NBN1000", download_mbps: 1000, upload_mbps: 100, monthly_price: 129, intro_price: 114, intro_months: 36},
	]
}
