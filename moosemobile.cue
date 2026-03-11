package data

providers: moosemobile: #Provider & {
	name:            "Moose Mobile"
	slug:            "moosemobile"
	website_url:     "https://moosemobile.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	plans: [{
		name:          "Value"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 64.8
		promo: {
			price:  44.8
			months: 6
		}
		category: "residential"
	}, {
		name:          "Premium"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 83.8
		promo: {
			price:  59.8
			months: 6
		}
		category: "residential"
	}, {
		name:          "Elite"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 86.8
		promo: {
			price:  63.8
			months: 6
		}
		category: "residential"
	}, {
		name:          "Turbo"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 86.8
		promo: {
			price:  63.8
			months: 6
		}
		category: "residential"
	}]
}
