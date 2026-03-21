package data

providers: futurebroadband: #Provider & {
	name:            "Future Broadband"
	slug:            "futurebroadband"
	website_url:     "https://futurebroadband.com.au"
	connection_type: "unknown"
	cgnat:           false
	cgnat_opt_out:   "N/A"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	plans: [{
		name:          "Value NBN 25M / 8M"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   8
		monthly_price: 7e+1
		category:      "residential"
	}, {
		name:          "Value NBN 500M / 45M"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   45
		monthly_price: 95.0
		category:      "residential"
	}, {
		name:          "FUTURE 500M / 185M"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   185
		monthly_price: 175.0
		category:      "residential"
	}, {
		name:          "FUTURE Ultrafast\u00a0/ 335M"
		speed_tier:    "NBN1000"
		download_mbps: 875
		upload_mbps:   335
		monthly_price: 195.0
		category:      "residential"
	}, {
		name:          "FUTURE Wireless Plus"
		speed_tier:    "NBN100"
		download_mbps: 95
		upload_mbps:   18
		monthly_price: 9e+1
		category:      "residential"
		technology:    "nbn-fw"
	}]
}
