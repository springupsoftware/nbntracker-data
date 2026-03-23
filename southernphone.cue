package data

providers: southernphone: #Provider & {
	name:             "Southern Phone"
	slug:             "southernphone"
	website_url:      "https://www.southernphone.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 7.5
	}
	billing_policy: "pro-rata"

	upstream: {
		enabler: "Telcoinabox"
	}
	ipv6: {
		available: false
		notes:     "IPv6 not available on Telcoinabox platform"
	}

	plans: [{
		name:          "nbn Basic"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   4
		monthly_price: 59.0
		category:      "residential"
		cis_url:       "https://southernphone-prod.dotcms.cloud/dA/552a5bd7-7144-4f53-afd7-adba45301cc0/fileAsset/SPC%20nbn%20CIS%2014112025.pdf"
	}, {
		name:          "nbn Standard"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   18
		monthly_price: 79.0
		category:      "residential"
		cis_url:       "https://southernphone-prod.dotcms.cloud/dA/552a5bd7-7144-4f53-afd7-adba45301cc0/fileAsset/SPC%20nbn%20CIS%2014112025.pdf"
	}, {
		name:          "nbn Fast"
		speed_tier:    "NBN100"
		download_mbps: 87
		upload_mbps:   18
		monthly_price: 89.0
		category:      "residential"
		cis_url:       "https://southernphone-prod.dotcms.cloud/dA/552a5bd7-7144-4f53-afd7-adba45301cc0/fileAsset/SPC%20nbn%20CIS%2014112025.pdf"
	}, {
		name:          "nbn Fast X"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   45
		monthly_price: 89.0
		category:      "residential"
		cis_url:       "https://southernphone-prod.dotcms.cloud/dA/552a5bd7-7144-4f53-afd7-adba45301cc0/fileAsset/SPC%20nbn%20CIS%2014112025.pdf"
	}, {
		name:          "nbn Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 860
		upload_mbps:   90
		monthly_price: 95.0
		category:      "residential"
		cis_url:       "https://southernphone-prod.dotcms.cloud/dA/552a5bd7-7144-4f53-afd7-adba45301cc0/fileAsset/SPC%20nbn%20CIS%2014112025.pdf"
	}]
}
