package data

providers: spintel: #Provider & {
	name:            "SpinTel"
	slug:            "spintel"
	website_url:     "https://www.spintel.net.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	support_location: "Australia"
	plans: [{
		name:          "25/10Mbps"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 64.95
		promo: {
			price:  51.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "50/20Mbps"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 81.95
		promo: {
			price:  71.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "100/20Mbps"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 86.95
		promo: {
			price:  73.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "500/50Mbps"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 86.95
		promo: {
			price:  76.0
			months: 6
		}
		category: "residential"
	}, {
		name:          "750/50Mbps"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 90.95
		promo: {
			price:  8e+1
			months: 6
		}
		category: "residential"
	}, {
		name:          "1000/100Mbps"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 99.95
		promo: {
			price:  89.0
			months: 6
		}
		category: "residential"
	}]
}
