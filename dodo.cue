package data

providers: dodo: #Provider & {
	name:             "Dodo"
	slug:             "dodo"
	website_url:      "https://www.dodo.com"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Offshore"
	accc_performance: {
		report_period:    "2025-Q4"
		latency_ms:       10.7
		latency_busy_ms:  10.9
		page_load_s:      2.3
		page_load_busy_s: 2.4
		outage_pct:       0.18
	}
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	plans: [{
		name:          "nbn25"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   9
		monthly_price: 71.99
		promo: {
			price:  51.99
			months: 12
		}
		category: "residential"
	}, {
		name:          "nbn50"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 85.99
		promo: {
			price:  65.99
			months: 12
		}
		category: "residential"
	}, {
		name:          "nbn100"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   17
		monthly_price: 92.99
		promo: {
			price:  72.99
			months: 12
		}
		category: "residential"
	}, {
		name:          "superfast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   48
		monthly_price: 92.99
		promo: {
			price:  72.99
			months: 12
		}
		category: "residential"
	}, {
		name:          "ultrafast"
		speed_tier:    "NBN750"
		download_mbps: 700
		upload_mbps:   49
		monthly_price: 99.99
		promo: {
			price:  79.99
			months: 12
		}
		category: "residential"
	}, {
		name:          "ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 840
		upload_mbps:   94
		monthly_price: 109.99
		promo: {
			price:  89.99
			months: 12
		}
		category: "residential"
	}]
}
