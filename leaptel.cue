package data

providers: leaptel: #Provider & {
	name:            "Leaptel"
	slug:            "leaptel"
	website_url:     "https://leaptel.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "30-day-notice"
	transit_quality: "Standard"
	ipv6: available:   false
	upstream: enabler: "Superloop"
	plans: [{
		name:          "Pronto"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 75.0
		promo: {
			price:  5e+1
			months: 6
		}
		category: "residential"
	}, {
		name:          "Full Throttle"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 97.0
		promo: {
			price:  8e+1
			months: 12
		}
		category: "residential"
	}, {
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 97.0
		promo: {
			price:  8e+1
			months: 12
		}
		category: "residential"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 119.0
		promo: {
			price:  99.0
			months: 12
		}
		category: "residential"
	}]
}
