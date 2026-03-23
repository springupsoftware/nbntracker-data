package data

providers: spintel: #Provider & {
	name:             "SpinTel"
	slug:             "spintel"
	website_url:      "https://www.spintel.net.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	billing_policy: "pro-rata"
	upstream: {
		enabler: "Superloop"
	}
	plans: [{
		name:          "25/10Mbps"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 64.95
		promo: {
			price:  39.95
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.06.pdf"
	}, {
		name:          "Fixed Wireless 25/5Mbps"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   5
		monthly_price: 64.95
		promo: {
			price:  51.0
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.06.pdf"
	}, {
		name:          "Fixed Wireless Plus"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 81.95
		promo: {
			price:  71.0
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.06.pdf"
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
		cis_url:  "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.06.pdf"
	}, {
		name:          "Fixed Wireless Home Fast"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   20
		monthly_price: 86.95
		promo: {
			price:  76.0
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.06.pdf"
	}, {
		name:          "Fixed Wireless Superfast"
		speed_tier:    "NBN500"
		download_mbps: 400
		upload_mbps:   40
		monthly_price: 90.95
		promo: {
			price:  8e+1
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.06.pdf"
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
		cis_url:  "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.06.pdf"
	}]
}
