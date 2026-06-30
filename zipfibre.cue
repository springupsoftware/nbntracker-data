package data

providers: zipfibre: #Provider & {
	name:            "ZipFibre"
	slug:            "zipfibre"
	website_url:     "https://www.zipfibre.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    true
		monthly_cost: 0.0
	}
	billing_policy: "end-of-month"
	ipv6: available:    true
	upstream: backhaul: "Vocus"
	plans: [{
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 85.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/assets/ZipFibre_Residential_CIS_2026_06_14-medIJXpr.pdf"
	}, {
		name:          "Superfast"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 99.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/assets/ZipFibre_Residential_CIS_2026_06_14-medIJXpr.pdf"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 105.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/assets/ZipFibre_Residential_CIS_2026_06_14-medIJXpr.pdf"
	}, {
		name:          "Hyperfast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 175.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/assets/ZipFibre_Residential_CIS_2026_06_14-medIJXpr.pdf"
	}]
}
