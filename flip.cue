package data

providers: flip: #Provider & {
	name:            "Flip"
	slug:            "flip"
	website_url:     "https://flipconnect.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available: false
	upstream: {}
	plans: [{
		name:          "Premium"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   8
		monthly_price: 59.9
		promo: {
			price:  48.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Family"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 79.9
		promo: {
			price:  68.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Super Speed"
		speed_tier:    "NBN750"
		download_mbps: 640
		upload_mbps:   42
		monthly_price: 89.9
		promo: {
			price:  78.0
			months: 4
		}
		category: "residential"
	}, {
		name:          "Turbo Boost"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   17
		monthly_price: 83.9
		promo: {
			price:  74.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Fast Speed"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   42
		monthly_price: 83.9
		promo: {
			price:  74.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Ultra Speed"
		speed_tier:    "NBN1000"
		download_mbps: 850
		upload_mbps:   85
		monthly_price: 104.9
		promo: {
			price:  89.0
			months: 4
		}
		category: "residential"
	}]
}
