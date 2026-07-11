package data

providers: launtel: #Provider & {
	name:            "Launtel"
	slug:            "launtel"
	website_url:     "https://launtel.com.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy:  "pro-rata"
	transit_quality: "Standard"
	ipv6: available: false
	upstream: {}
	plans: [{
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 109.58
		category:      "residential"
	}, {
		name:          "Superfast"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 127.84
		category:      "residential"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 133.93
		category:      "residential"
	}, {
		name:          "Hyperfast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 191.76
		category:      "residential"
	}, {
		name:          "Standard Pro"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   40
		monthly_price: 121.75
		category:      "residential"
	}, {
		name:          "Fast Pro"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 121.75
		category:      "residential"
	}, {
		name:          "Superfast Pro"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 144.58
		category:      "residential"
	}, {
		name:          "Ultrafast Pro"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 176.54
		category:      "residential"
	}, {
		name:          "Hyperfast Pro"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   500
		monthly_price: 255.68
		category:      "residential"
	}, {
		name:          "Basic"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 106.53
		category:      "residential"
	}]
}
