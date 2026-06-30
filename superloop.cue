package data

providers: superloop: #Provider & {
	name:            "Superloop"
	slug:            "superloop"
	website_url:     "https://www.superloop.com"
	connection_type: "PPPoE"
	cgnat:           false
	cgnat_opt_out:   "unavailable"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:    false
	upstream: backhaul: "Own"
	plans: [{
		name:          "Everyday"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 72.0
		promo: {
			price:  45.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Extra Value"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 85.0
		promo: {
			price:  65.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Superfast Plus"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 99.0
		promo: {
			price:  85.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Family Max"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 95.0
		promo: {
			price:  69.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Megaspeed"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 104.0
		promo: {
			price:  75.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Lightspeed"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 109.0
		promo: {
			price:  79.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Hyperspeed"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 165.0
		promo: {
			price:  145.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://files.superloop.com/cis/residential/nbn/2025-09/SL_CIS_Residential_nbn.pdf"
	}, {
		name:          "Totalbiz 50/20"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 9e+1
		promo: {
			price:  65.0
			months: 6
		}
		category: "business"
		cis_url:  "https://files.superloop.com/cis/smb/nbn/2025-09/CIS_Superloop_totalbiz.pdf"
	}, {
		name:          "Totalbiz 250/100"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 105.0
		promo: {
			price:  8e+1
			months: 6
		}
		category: "business"
		cis_url:  "https://files.superloop.com/cis/smb/nbn/2025-09/CIS_Superloop_totalbiz.pdf"
	}, {
		name:          "Totalbiz 500/50"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 1e+2
		promo: {
			price:  75.0
			months: 6
		}
		category: "business"
		cis_url:  "https://files.superloop.com/cis/smb/nbn/2025-09/CIS_Superloop_totalbiz.pdf"
	}, {
		name:          "Totalbiz 500/200"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 125.0
		promo: {
			price:  1e+2
			months: 6
		}
		category: "business"
		cis_url:  "https://files.superloop.com/cis/smb/nbn/2025-09/CIS_Superloop_totalbiz.pdf"
	}, {
		name:          "Totalbiz 750/50"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 109.0
		promo: {
			price:  84.0
			months: 6
		}
		category: "business"
		cis_url:  "https://files.superloop.com/cis/smb/nbn/2025-09/CIS_Superloop_totalbiz.pdfhttps://files.superloop.com/cis/smb/nbn/2025-09/CIS_Superloop_totalbiz.pdf"
	}, {
		name:          "Totalbiz 1000/100"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 119.0
		promo: {
			price:  94.0
			months: 6
		}
		category: "business"
		cis_url:  "https://files.superloop.com/cis/smb/nbn/2025-09/CIS_Superloop_totalbiz.pdf"
	}]
}
