package data

providers: optus: #Provider & {
	name:            "Optus"
	slug:            "optus"
	website_url:     "https://www.optus.com.au"
	connection_type: "PPPoE"
	cgnat:           true
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:    false
	upstream: backhaul: "Own"
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
		promo: {
			price:  79.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Ultrafast Plan"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 129.0
		promo: {
			price:  109.0
			months: 12
		}
		category: "residential"
	}]
}
