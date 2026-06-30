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
	ipv6: available: false
	upstream: {}
	plans: [{
		name:          "Standard"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 100.44
		category:      "residential"
	}, {
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 106.53
		category:      "residential"
	}, {
		name:          "Superfast"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 121.75
		category:      "residential"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 127.84
		category:      "residential"
	}, {
		name:          "Hyperfast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 182.63
		category:      "residential"
	}, {
		name:          "Standard Pro"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   40
		monthly_price: 115.66
		category:      "residential"
	}, {
		name:          "Fast Pro"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 115.66
		category:      "residential"
	}, {
		name:          "Superfast Pro"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 136.97
		category:      "residential"
	}, {
		name:          "Ultrafast Pro"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 167.41
		category:      "residential"
	}, {
		name:          "Hyperfast Pro"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   500
		monthly_price: 243.5
		category:      "residential"
	}]
}
