package data

providers: more: #Provider & {
	name:             "More Telecom"
	slug:             "more"
	website_url:      "https://www.more.com.au"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	billing_policy: "pro-rata"
	upstream: {}
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		default_enabled:        false
	}
	plans: [{
		name:          "Value"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 78.0
		promo: {
			price:  63.0
			months: 36
		}
		category: "residential"
		cis_url:  "https://www.more.com.au/legal/critical-information-summaries/"
	}, {
		name:          "Value Plus"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 95.0
		promo: {
			price:  8e+1
			months: 36
		}
		category: "residential"
		cis_url:  "https://www.more.com.au/legal/critical-information-summaries/"
	}, {
		name:          "Fast Max"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 1e+2
		promo: {
			price:  85.0
			months: 36
		}
		category: "residential"
		cis_url:  "https://www.more.com.au/legal/critical-information-summaries/"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 129.0
		promo: {
			price:  114.0
			months: 36
		}
		category: "residential"
		cis_url:  "https://www.more.com.au/legal/critical-information-summaries/"
	}]
}
