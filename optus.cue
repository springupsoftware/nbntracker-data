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
	billing_policy:  "end-of-cycle"
	transit_quality: "Standard"
	ipv6: available:    false
	upstream: backhaul: "Own"
	plans: [{
		name:          "Basic Plan"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 83.0
		promo: {
			price:  73.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Everyday Plan"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 97.0
		promo: {
			price:  87.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Fast Plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   100
		monthly_price: 99.0
		promo: {
			price:  89.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Promo plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   100
		monthly_price: 109.0
		promo: {
			price:  69.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Promo Plus plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   100
		monthly_price: 109.0
		promo: {
			price:  69.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Ultrafast Plan"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 129.0
		promo: {
			price:  119.0
			months: 12
		}
		category: "residential"
	}]
}
