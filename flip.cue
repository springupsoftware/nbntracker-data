package data

providers: flip: #Provider & {
	name:             "Flip"
	slug:             "flip"
	website_url:      "https://flipconnect.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "unknown"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 1.98
	}
	notice_period_days: 30
	billing_policy:     "30-day-notice"
	transit_quality:    "Standard"
	ipv6: available:   false
	upstream: enabler: "Swoop"
	plans: [{
		name:          "Premium"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   8
		monthly_price: 65.9
		promo: {
			price:  48.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Super Speed"
		speed_tier:    "NBN750"
		download_mbps: 640
		upload_mbps:   42
		monthly_price: 94.9
		promo: {
			price:  78.0
			months: 4
		}
		category: "residential"
	}, {
		name:          "Family"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 84.9
		promo: {
			price:  68.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Turbo Boost"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   17
		monthly_price: 88.9
		promo: {
			price:  69.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Fast Speed"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   42
		monthly_price: 88.9
		promo: {
			price:  69.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "Ultra Speed"
		speed_tier:    "NBN1000"
		download_mbps: 850
		upload_mbps:   85
		monthly_price: 109.9
		promo: {
			price:  89.0
			months: 4
		}
		category: "residential"
	}]
}
