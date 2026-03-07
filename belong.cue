package data

providers: belong: #Provider & {
	name:            "Belong"
	slug:            "belong"
	website_url:     "https://www.belong.com.au"
	connection_type: "PPPoE"
	uses_cgnat:      false
	cgnat_opt_out:   "unknown"
	plans: [{
		name:          "Starter"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 55.0
		category:      "residential"
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
		name:          "Premium"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 65.0
		category:      "residential"
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
		name:          "Standard Plus"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 65.0
		category:      "residential"
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
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 8e+1
		category:      "residential"
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
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 65.0
		category:      "residential"
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
