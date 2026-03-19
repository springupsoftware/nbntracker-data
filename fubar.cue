package data

providers: fubar: #Provider & {
	name:            "IT'S FUBAR"
	slug:            "fubar"
	website_url:     "https://www.itsfubar.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "true"
	support_location: "Australia"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	plans: [{
		name:          "nbn Home Basic II (25/10)"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 50.9
		category:      "residential"
	}, {
		name:          "nbn Home Standard (50/20)"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 92.9
		category:      "residential"
	}, {
		name:          "nbn Home Fast (100/20)"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 97.9
		category:      "residential"
	}, {
		name:          "nbn Home Fast II (500/50)"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 97.9
		category:      "residential"
	}, {
		name:          "nbn Home Superfast (750/50)"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 115.9
		category:      "residential"
	}, {
		name:          "nbn Home Ultrafast (1000/100)"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 138.9
		category:      "residential"
	}, {
		name:          "nbn Fixed Wireless Basic II (25/5)"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   5
		monthly_price: 50.9
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "nbn Fixed Wireless Plus (100/20)"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 92.9
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "nbn Fixed Wireless Home Fast (250/20)"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   20
		monthly_price: 97.9
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "nbn Fixed Wireless Superfast (400/40)"
		speed_tier:    "NBN500"
		download_mbps: 400
		upload_mbps:   40
		monthly_price: 110.9
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "nbn Business 100 Essentials (100/40)"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   40
		monthly_price: 108.9
		category:      "business"
	}, {
		name:          "nbn Business 250 Essentials (250/100)"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 108.9
		category:      "business"
	}, {
		name:          "nbn Business 500 Pro (500/200)"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 129.9
		category:      "business"
	}, {
		name:          "nbn Business 1000 Pro (1000/400)"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 156.9
		category:      "business"
	}]
}
