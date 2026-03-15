package data

providers: belong: #Provider & {
	name:             "Belong"
	slug:             "belong"
	website_url:      "https://www.belong.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "unavailable"
	support_location: "Hybrid"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	plans: [{
		name:          "Starter"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 72.0
		promo: {
			price:  55.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Premium"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 95.0
		promo: {
			price:  65.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Standard Plus"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 88.0
		promo: {
			price:  65.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 1.1e+2
		promo: {
			price:  8e+1
			months: 6
		}
		category: "residential"
	}, {
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 95.0
		promo: {
			price:  65.0
			months: 6
		}
		category: "residential"
	}]
}
