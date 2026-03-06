package data

providers: aussie: #Provider & {
	name:            "Aussie Broadband"
	slug:            "aussie"
	website_url:     "https://www.aussiebroadband.com.au"
	connection_type: "IPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [
		{name: "Basic", speed_tier: "NBN12", download_mbps: 12, upload_mbps: 1, monthly_price: 73},
		{name: "Basic Plus", speed_tier: "NBN25", download_mbps: 25, upload_mbps: 10, monthly_price: 79},
		{name: "Value", speed_tier: "NBN50", download_mbps: 50, upload_mbps: 20, monthly_price: 93},
		{name: "Super-Fast PRO", speed_tier: "NBN250", download_mbps: 250, upload_mbps: 100, monthly_price: 109},
		{name: "Fast", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 50, monthly_price: 95},
		{name: "Hyper-Fast PRO", speed_tier: "NBN500", download_mbps: 500, upload_mbps: 200, monthly_price: 130},
		{name: "Super-Fast", speed_tier: "NBN1000", download_mbps: 750, upload_mbps: 50, monthly_price: 119},
		{name: "Ultra-Fast", speed_tier: "NBN1000", download_mbps: 1000, upload_mbps: 100, monthly_price: 129},
		{name: "Ultra-Fast PRO", speed_tier: "NBN1000", download_mbps: 1000, upload_mbps: 400, monthly_price: 150},
		{name: "Hyper-Fast", speed_tier: "NBN2000", download_mbps: 2000, upload_mbps: 200, monthly_price: 189},
		{name: "Hyper-Fast PRO", speed_tier: "NBN2000", download_mbps: 2000, upload_mbps: 500, monthly_price: 220},
	]
}
