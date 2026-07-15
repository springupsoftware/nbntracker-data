package data

providers: zipfibre: #Provider & {
	name:            "ZipFibre"
	slug:            "zipfibre"
	website_url:     "https://www.zipfibre.com.au"
	connection_type: "IPoE"
	cgnat:           true
	cgnat_opt_out:   "available"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	ipv6: available:    false
	upstream: backhaul: "Vocus"
	plans: [{
		name:          "Pro 1000"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 145.0
		category:      "business"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Hyperfast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 175.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Pro 500"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 116.0
		category:      "business"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Hyperfast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   100
		monthly_price: 175.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Pro Hyperfast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   500
		monthly_price: 224.0
		category:      "business"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 105.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 105.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Superfast"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 99.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 85.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Superfast"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 99.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}, {
		name:          "Fast"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 85.0
		category:      "residential"
		cis_url:       "https://www.zipfibre.com.au/sites/zipfibre/files/cis/ZipFibre_NBN_CIS.pdf"
	}]
}
