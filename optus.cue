package data

providers: optus: #Provider & {
	name:            "Optus"
	slug:            "optus"
	website_url:     "https://www.optus.com.au"
	connection_type: "IPoE"
	uses_cgnat:      false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	plans: [{
		name:          "Basic Plan"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 79.0
		category:      "residential"
	}, {
		name:          "Everyday Plan"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 95.0
		category:      "residential"
	}, {
		name:          "Fast Plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   100
		monthly_price: 99.0
		category:      "residential"
	}, {
		name:          "Promo Plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   100
		monthly_price: 119.0
		promo: {
			price:  94.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Ultrafast Plan"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 129.0
		category:      "residential"
	}]
}
