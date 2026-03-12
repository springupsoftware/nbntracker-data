package data

providers: swoop: #Provider & {
	name:            "Swoop"
	slug:            "swoop"
	website_url:     "https://www.swoop.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 5.5
	}
	plans: [{
		name:          "nbn® 25/10"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 69.0
		promo: {
			price:  54.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "nbn® 50/20"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 84.0
		promo: {
			price:  69.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "nbn® 500/50"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 94.0
		promo: {
			price:  72.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "nbn® 1000/100"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 109.0
		promo: {
			price:  85.0
			months: 6
		}
		category: "residential"
	}]
}
