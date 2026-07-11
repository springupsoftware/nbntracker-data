package data

providers: tangerine: #Provider & {
	name:            "Tangerine Telecom"
	slug:            "tangerine"
	website_url:     "https://www.tangerine.com.au"
	connection_type: "PPPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	transit_quality: "Standard"
	ipv6: available:   false
	upstream: enabler: "Superloop"
	plans: [{
		name:          "Value"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 72.9
		promo: {
			price:  47.9
			months: 6
		}
		category: "residential"
	}, {
		name:          "Value Plus"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 89.9
		promo: {
			price:  64.9
			months: 6
		}
		category: "residential"
	}, {
		name:          "Speedy Max"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 92.9
		promo: {
			price:  67.9
			months: 6
		}
		category: "residential"
	}, {
		name:          "UltraSpeedy"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 114.9
		promo: {
			price:  89.9
			months: 6
		}
		category: "residential"
	}]
}
