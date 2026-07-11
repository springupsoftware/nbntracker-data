package data

providers: more: #Provider & {
	name:            "More Telecom"
	slug:            "more"
	website_url:     "https://www.more.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "end-of-cycle"
	transit_quality: "Standard"
	ipv6: available: false
	upstream: {}
	plans: [{
		name:          "Value"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 8e+1
		category:      "residential"
		cis_url:       "https://www.more.com.au/legal/critical-information-summaries/"
	}, {
		name:          "Value Plus"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 1e+2
		category:      "residential"
		cis_url:       "https://www.more.com.au/legal/critical-information-summaries/"
	}, {
		name:          "Fast Max"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 105.0
		category:      "residential"
		cis_url:       "https://www.more.com.au/legal/critical-information-summaries/"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 125.0
		category:      "residential"
		cis_url:       "https://www.more.com.au/legal/critical-information-summaries/"
	}]
}
