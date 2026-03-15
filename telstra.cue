package data

providers: telstra: #Provider & {
	name:             "Telstra"
	slug:             "telstra"
	website_url:      "https://www.telstra.com.au"
	connection_type:  "IPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	support_location: "Hybrid"
	accc_performance: {
		report_period:    "2025-Q4"
		latency_ms:       9.9
		latency_busy_ms:  1e+1
		page_load_s:      2.3
		page_load_busy_s: 2.3
		outage_pct:       0.11
	}
	static_ip: {
		available:    true
		monthly_cost: 1e+1
	}
	billing_policy: "pro-rata"
	plans: [{
		name:          "Basic nbn"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 85.0
		category:      "residential"
		cis_url:       "https://www.telstra.com.au/content/dam/tcom/personal/help/pdf/cis-personal/nbn-key-facts/key-fact-sheet-nbn-services-all-types.pdf"
	}, {
		name:          "Essential nbn"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 95.0
		category:      "residential"
		cis_url:       "https://www.telstra.com.au/content/dam/tcom/personal/help/pdf/cis-personal/nbn-key-facts/key-fact-sheet-nbn-services-all-types.pdf"
	}, {
		name:          "Essential nbn"
		speed_tier:    "NBN100"
		download_mbps: 75
		upload_mbps:   25
		monthly_price: 95.0
		category:      "residential"
		cis_url:       "https://www.telstra.com.au/content/dam/tcom/personal/help/pdf/cis-personal/nbn-key-facts/key-fact-sheet-nbn-services-all-types.pdf"
	}, {
		name:          "Premium nbn"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 99.0
		category:      "residential"
		cis_url:       "https://www.telstra.com.au/content/dam/tcom/personal/help/pdf/cis-personal/nbn-key-facts/key-fact-sheet-nbn-services-all-types.pdf"
	}, {
		name:          "Premium nbn"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 99.0
		category:      "residential"
		cis_url:       "https://www.telstra.com.au/content/dam/tcom/personal/help/pdf/cis-personal/nbn-key-facts/key-fact-sheet-nbn-services-all-types.pdf"
	}, {
		name:          "Ultimate nbn"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 119.0
		category:      "residential"
		cis_url:       "https://www.telstra.com.au/content/dam/tcom/personal/help/pdf/cis-personal/nbn-key-facts/key-fact-sheet-nbn-services-all-types.pdf"
	}, {
		name:          "Ultrafast nbn"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   50
		monthly_price: 129.0
		category:      "residential"
		cis_url:       "https://www.telstra.com.au/content/dam/tcom/personal/help/pdf/cis-personal/nbn-key-facts/key-fact-sheet-nbn-services-all-types.pdf"
	}]
}
