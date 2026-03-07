package data

providers: tangerine: #Provider & {
	name:            "Tangerine Telecom"
	slug:            "tangerine"
	website_url:     "https://www.tangerine.com.au"
	connection_type: "PPPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [{
		name:          "Value"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 69.9
		promo: {
			price:  44.9
			months: 6
		}
		category: "residential"
		features: {
			static_ip: {
				available:    false
				monthly_cost: 0.0
			}
			esla:        false
			symmetrical: false
			backup_4g:   false
		}
	}, {
		name:          "Value Plus"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 84.9
		promo: {
			price:  59.9
			months: 6
		}
		category: "residential"
		features: {
			static_ip: {
				available:    false
				monthly_cost: 0.0
			}
			esla:        false
			symmetrical: false
			backup_4g:   false
		}
	}, {
		name:          "Speedy Max"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 88.9
		promo: {
			price:  58.9
			months: 6
		}
		category: "residential"
		features: {
			static_ip: {
				available:    false
				monthly_cost: 0.0
			}
			esla:        false
			symmetrical: false
			backup_4g:   false
		}
	}, {
		name:          "UltraSpeedy"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 119.9
		promo: {
			price:  94.9
			months: 6
		}
		category: "residential"
		features: {
			static_ip: {
				available:    false
				monthly_cost: 0.0
			}
			esla:        false
			symmetrical: false
			backup_4g:   false
		}
	}]
}
