package data

providers: mate: #Provider & {
	name:             "Mate"
	slug:             "mate"
	website_url:      "https://www.letsbemates.com.au"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "paid_static_ip"
	support_location: "Australia"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	upstream: {}
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		default_enabled:        false
	}
	plans: [{
		name:          "Crikey"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 76.0
		promo: {
			price:  51.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "Ripper"
		speed_tier:    "NBN50"
		download_mbps: 49
		upload_mbps:   19
		monthly_price: 86.0
		promo: {
			price:  71.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "No Worries"
		speed_tier:    "NBN100"
		download_mbps: 97
		upload_mbps:   19
		monthly_price: 96.0
		promo: {
			price:  71.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "You Beaut"
		speed_tier:    "NBN100"
		download_mbps: 97
		upload_mbps:   36
		monthly_price: 106.0
		promo: {
			price:  81.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "No Worries"
		speed_tier:    "NBN500"
		download_mbps: 485
		upload_mbps:   46
		monthly_price: 96.0
		promo: {
			price:  71.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "Fair Dinkum"
		speed_tier:    "NBN750"
		download_mbps: 713
		upload_mbps:   46
		monthly_price: 121.0
		promo: {
			price:  96.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "Flamin' Fast"
		speed_tier:    "NBN1000"
		download_mbps: 913
		upload_mbps:   94
		monthly_price: 126.0
		promo: {
			price:  101.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "Scorchin' Fast"
		speed_tier:    "NBN2000"
		download_mbps: 1831
		upload_mbps:   96
		monthly_price: 166.0
		promo: {
			price:  141.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}, {
		name:          "Scorchin' Fast"
		speed_tier:    "NBN2000"
		download_mbps: 1831
		upload_mbps:   196
		monthly_price: 166.0
		promo: {
			price:  141.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.letsbemates.com.au/critical-information-summary/"
	}]
}
