package data

providers: aussie: #Provider & {
	name:            "Aussie Broadband"
	slug:            "aussie"
	website_url:     "https://www.aussiebroadband.com.au"
	connection_type: "PPPoE"
	uses_cgnat:      true
	cgnat_opt_out:   "available"
	plans: [{
		name:          "Basic"
		speed_tier:    "NBN12"
		download_mbps: 12
		upload_mbps:   1
		monthly_price: 73.0
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
		name:          "Basic Plus"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 79.0
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
		name:          "Value"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 93.0
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
		name:          "Super-Fast PRO"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 109.0
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
		monthly_price: 95.0
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
		name:          "Hyper-Fast PRO"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 1.3e+2
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
		name:          "Super-Fast"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 119.0
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
		name:          "Ultra-Fast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 129.0
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
		name:          "Ultra-Fast PRO"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 1.5e+2
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
		name:          "Hyper-Fast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 189.0
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
		name:          "Hyper-Fast PRO"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   500
		monthly_price: 2.2e+2
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
