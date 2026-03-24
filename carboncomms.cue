package data

providers: carboncomms: #Provider & {
	name:             "Carbon Comms"
	slug:             "carboncomms"
	website_url:      "https://carboncomms.com.au"
	connection_type:  "IPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	support_location: "Australia"
	static_ip: {
		available:    true
		monthly_cost: 0.0
		notes:        "Static IP (IPv4) included as standard"
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW"]
	# Currently only in NSW
	# https://forums.whirlpool.net.au/thread/3vw4yjyr

	upstream: {
		enabler: "Aussie Broadband"
	}
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		default_enabled:        true
	}

	upstream: enabler: "Aussie Broadband"
	plans: [{
		name:          "Carbon Home Fast 25/10 nbn™"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 49.0
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Home Fast 50/20 nbn™"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 75.0
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Home Fast 100/20 nbn™"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 8e+1
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Home Fast 100/40 nbn™"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   40
		monthly_price: 85.0
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Home Fast 500/50 nbn™"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 8e+1
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Home Superfast 750/50 nbn™"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 87.0
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Ultrafast 1000/100 nbn™"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 99.0
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Hyperfast HFC 2000/100 nbn™"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   100
		monthly_price: 1.5e+2
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Hyperfast FTTP 2000/200 nbn™"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 1.5e+2
		category:      "residential"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Business Fast 100/40 nbn™"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   40
		monthly_price: 85.0
		category:      "business"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Business Superfast 250/100 nbn™"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 85.0
		category:      "business"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Business Superfast 250/100 nbn™"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 99.0
		category:      "business"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Business Turbofast 500/200 nbn™"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 105.0
		category:      "business"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Business Ultrafast 1000/400 nbn™"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 125.0
		category:      "business"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}, {
		name:          "Carbon Business Hyperfast Plus 2000/500 nbn™"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   500
		monthly_price: 195.0
		category:      "business"
		cis_url:       "https://carboncomms.com.au/pages/critical-information-summary-nbn-residential"
	}]
}
