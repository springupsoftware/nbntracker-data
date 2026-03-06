package data

providers: telstra: #Provider & {
	name:            "Telstra"
	slug:            "telstra"
	website_url:     "https://www.telstra.com.au"
	connection_type: "PPPoE"
	uses_cgnat:      false
	cgnat_opt_out:   "N/A"
	plans: [
		{name: "Basic nbn", speed_tier: "NBN25", download_mbps: 25, upload_mbps: 10, monthly_price: 85, intro_price: 42.5, intro_months: 2, notes: "Coupon ONLINE50: Get 50% off for 2 months"},
		{name: "Essential nbn", speed_tier: "NBN50", download_mbps: 50, upload_mbps: 20, monthly_price: 95, intro_price: 47.5, intro_months: 2, notes: "Coupon ONLINE50: Get 50% off for 2 months"},
		{name: "Essential nbn", speed_tier: "NBN100", download_mbps: 75, upload_mbps: 25, monthly_price: 95, intro_price: 47.5, intro_months: 2, notes: "Coupon ONLINE50: Get 50% off for 2 months"},
		{name: "Premium nbn", speed_tier: "NBN100", download_mbps: 100, upload_mbps: 20, monthly_price: 99, intro_price: 49.5, intro_months: 2, notes: "Coupon ONLINE50: Get 50% off for 2 months"},
		{name: "Premium nbn", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 50, monthly_price: 99, intro_price: 49.5, intro_months: 2, notes: "Coupon ONLINE50: Get 50% off for 2 months"},
		{name: "Ultimate nbn", speed_tier: "NBN1000", download_mbps: 750, upload_mbps: 50, monthly_price: 119, intro_price: 59.5, intro_months: 2, notes: "Coupon ONLINE50: Get 50% off for 2 months"},
		{name: "Ultrafast nbn", speed_tier: "NBN1000", download_mbps: 1000, upload_mbps: 50, monthly_price: 129, intro_price: 64.5, intro_months: 2, notes: "Coupon ONLINE50: Get 50% off for 2 months"},
	]
}
