package data

providers: telstra: #Provider & {
	name:            "Telstra"
	slug:            "telstra"
	website_url:     "https://www.telstra.com.au"
	connection_type: "PPPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "unavailable"
	plans: [{
		name:          "Basic nbn"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 85.0
		promo: {
			price:  42.5
			months: 2
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
		notes: "Coupon ONLINE50: Get 50% off for 2 months"
	}, {
		name:          "Essential nbn"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 95.0
		promo: {
			price:  47.5
			months: 2
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
		notes: "Coupon ONLINE50: Get 50% off for 2 months"
	}, {
		name:          "Essential nbn"
		speed_tier:    "NBN100"
		download_mbps: 75
		upload_mbps:   25
		monthly_price: 95.0
		promo: {
			price:  47.5
			months: 2
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
		notes: "Coupon ONLINE50: Get 50% off for 2 months"
	}, {
		name:          "Premium nbn"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 99.0
		promo: {
			price:  49.5
			months: 2
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
		notes: "Coupon ONLINE50: Get 50% off for 2 months"
	}, {
		name:          "Premium nbn"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 99.0
		promo: {
			price:  49.5
			months: 2
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
		notes: "Coupon ONLINE50: Get 50% off for 2 months"
	}, {
		name:          "Ultimate nbn"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 119.0
		promo: {
			price:  59.5
			months: 2
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
		notes: "Coupon ONLINE50: Get 50% off for 2 months"
	}, {
		name:          "Ultrafast nbn"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   50
		monthly_price: 129.0
		promo: {
			price:  64.5
			months: 2
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
		notes: "Coupon ONLINE50: Get 50% off for 2 months"
	}]
}
