package data

providers: leaptel: #Provider & {
	name:            "Leaptel"
	slug:            "leaptel"
	website_url:     "https://leaptel.com.au"
	connection_type: "IPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	plans: [{
		name:          "Pronto"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 69.95
		promo: {
			price:  49.95
			months: 6
		}
		category: "residential"
	}, {
		name:          "Accelerated"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 82.95
		promo: {
			price:  74.95
			months: 6
		}
		category: "residential"
	}, {
		name:          "Full Throttle"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 92.95
		promo: {
			price:  79.95
			months: 12
		}
		category: "residential"
	}, {
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 92.95
		promo: {
			price:  79.95
			months: 12
		}
		category: "residential"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 114.0
		promo: {
			price:  99.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Hyperfast HFC"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   100
		monthly_price: 165.0
		promo: {
			price:  155.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Hyperfast FTTP"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 165.0
		promo: {
			price:  155.0
			months: 12
		}
		category: "residential"
	}]
}
