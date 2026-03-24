package data

providers: iprimus: #Provider & {
	name:             "iPrimus"
	slug:             "iprimus"
	website_url:      "https://www.iprimus.com.au"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Offshore"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	notice_period_days: 30
	billing_policy:     "30-day-notice"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	upstream: {
		backhaul: "Vocus"
	}
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		default_enabled:        false
	}
	plans: [{
		name:          "nbn® Standard Plus"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 87.0
		category:      "residential"
		cis_url:       "https://www.iprimus.com.au/critical-information-summary/nbn-internet-plans-cis"
	}, {
		name:          "nbn® Premium"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   17
		monthly_price: 97.0
		promo: {
			price:  67.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.iprimus.com.au/critical-information-summary/nbn-internet-plans-cis"
	}, {
		name:          "nbn® Premium plus"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   47
		monthly_price: 97.0
		promo: {
			price:  67.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.iprimus.com.au/critical-information-summary/nbn-internet-plans-cis"
	}, {
		name:          "nbn® Home Superfast"
		speed_tier:    "NBN750"
		download_mbps: 700
		upload_mbps:   49
		monthly_price: 104.0
		category:      "residential"
		cis_url:       "https://www.iprimus.com.au/critical-information-summary/nbn-internet-plans-cis"
	}, {
		name:          "nbn® Home Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 840
		upload_mbps:   94
		monthly_price: 119.0
		category:      "residential"
		cis_url:       "https://www.iprimus.com.au/critical-information-summary/nbn-internet-plans-cis"
	}]
}
