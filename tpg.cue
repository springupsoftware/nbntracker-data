package data

providers: tpg: #Provider & {
	name:             "TPG"
	slug:             "tpg"
	website_url:      "https://www.tpg.com.au"
	connection_type:  "PPPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	support_location: "Offshore"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	notice_period_days: 30
	billing_policy:     "30-day-notice"
	transit_quality:    "Standard"
	ipv6: available:    false
	upstream: backhaul: "Own"
	plans: [{
		name:          "NBN100"
		speed_tier:    "NBN100"
		download_mbps: 99
		upload_mbps:   17
		monthly_price: 94.99
		promo: {
			price:  69.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN25"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   8
		monthly_price: 79.99
		promo: {
			price:  59.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN50"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 89.99
		promo: {
			price:  69.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN500"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   42
		monthly_price: 94.99
		promo: {
			price:  69.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN Home Superfast"
		speed_tier:    "NBN750"
		download_mbps: 740
		upload_mbps:   42
		monthly_price: 104.99
		promo: {
			price:  74.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN Home Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 820
		upload_mbps:   85
		monthly_price: 114.99
		promo: {
			price:  84.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN25"
		speed_tier:    "NBN25"
		download_mbps: 20
		upload_mbps:   4
		monthly_price: 79.99
		promo: {
			price:  59.99
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}]
}
