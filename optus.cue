package data

providers: optus: #Provider & {
	name:             "Optus"
	slug:             "optus"
	website_url:      "https://www.optus.com.au"
	connection_type:  "IPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	support_location: "Hybrid"
	accc_performance: {
		report_period:    "2025-Q4"
		latency_ms:       9.5
		latency_busy_ms:  9.6
		page_load_s:      2.3
		page_load_busy_s: 2.4
		outage_pct:       0.13
	}
	static_ip: {
		available:    true
		monthly_cost: 1e+1
	}
	billing_policy: "pro-rata"
	upstream: backhaul: "Own"
	plans: [{
		name:          "Basic Plan"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 79.0
		category:      "residential"
	}, {
		name:          "Everyday Plan"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 95.0
		category:      "residential"
	}, {
		name:          "Fast Plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   100
		monthly_price: 99.0
		category:      "residential"
	}, {
		name:          "Promo Plan"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   100
		monthly_price: 119.0
		promo: {
			price:  94.0
			months: 12
		}
		category: "residential"
	}, {
		name:          "Ultrafast Plan"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 129.0
		category:      "residential"
	}]
}
