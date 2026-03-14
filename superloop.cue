package data

providers: superloop: #Provider & {
	name:             "Superloop"
	slug:             "superloop"
	website_url:      "https://www.superloop.com"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	accc_performance: {
		report_period:    "2025-Q4"
		latency_ms:       8.3
		latency_busy_ms:  8.7
		page_load_s:      2.2
		page_load_busy_s: 2.2
		outage_pct:       0.08
	}
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	plans: [{
		name:          "Everyday"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 72.0
		promo: {
			price:  42.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Extra Value"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 85.0
		promo: {
			price:  55.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Superfast Plus"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 99.0
		promo: {
			price:  85.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Family Max"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 95.0
		promo: {
			price:  65.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Megaspeed"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 104.0
		promo: {
			price:  74.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Lightspeed"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 109.0
		promo: {
			price:  79.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Hyperspeed"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 165.0
		promo: {
			price:  145.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}]
}
