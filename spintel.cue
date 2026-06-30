package data

providers: spintel: #Provider & {
	name:            "SpinTel"
	slug:            "spintel"
	website_url:     "https://www.spintel.net.au"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unknown"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "end-of-cycle"
	ipv6: available:   false
	upstream: enabler: "Superloop"
	plans: [{
		name:          "25/10Mbps"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 69.95
		promo: {
			price:  44.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}, {
		name:          "Fixed Wireless 25/5Mbps"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   5
		monthly_price: 69.95
		promo: {
			price:  56.0
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}, {
		name:          "100/20Mbps"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 89.95
		promo: {
			price:  76.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}, {
		name:          "Fixed Wireless Plus"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 84.95
		promo: {
			price:  71.0
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}, {
		name:          "500/50Mbps"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 89.95
		promo: {
			price:  79.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}, {
		name:          "Fixed Wireless Home Fast"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   20
		monthly_price: 89.95
		promo: {
			price:  76.0
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}, {
		name:          "Fixed Wireless Superfast"
		speed_tier:    "NBN500"
		download_mbps: 400
		upload_mbps:   40
		monthly_price: 94.95
		promo: {
			price:  84.0
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}, {
		name:          "1000/100Mbps"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 104.95
		promo: {
			price:  94.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.spintel.net.au/static/critical_summary/NBN_CIS_v2.07.pdf"
	}]
}
