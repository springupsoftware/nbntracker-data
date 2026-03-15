package data

providers: neptune: #Provider & {
	name:             "Neptune"
	slug:             "neptune"
	website_url:      "https://www.neptune.net.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	plans: [{
		name:          "Home Fast 25/10"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 55.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Fast 50/20"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 8e+1
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Fast 100/20"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 85.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Fast 100/40"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   40
		monthly_price: 95.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Superfast 250/100"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 1.1e+2
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Fast 500/50"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 85.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Superfast 500/200"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 1.3e+2
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Superfast 750/50"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 95.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Ultrafast 1000/400"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 1.5e+2
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Ultrafast 1000/100"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 105.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Hyperfast 2000/200"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 175.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Hyperfast 2000/100"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   100
		monthly_price: 175.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}, {
		name:          "Home Hyperfast 2000/500"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   500
		monthly_price: 235.0
		category:      "residential"
		cis_url:       "https://www.neptune.net.au/critical-information-summary"
	}]
}
