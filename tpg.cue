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
	billing_policy:  "pro-rata"
	transit_quality: "Standard"
	ipv6: available:    false
	upstream: backhaul: "Own"
	plans: [{
		name:          "NBN100"
		speed_tier:    "NBN100"
		download_mbps: 99
		upload_mbps:   17
		monthly_price: 94.99
		promo: {
			price:  64.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN12"
		speed_tier:    "NBN12"
		download_mbps: 12
		upload_mbps:   1
		monthly_price: 74.99
		promo: {
			price:  54.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN25"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   4
		monthly_price: 76.99
		promo: {
			price:  56.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN50"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 84.99
		promo: {
			price:  64.99
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
			price:  64.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN Home Superfast"
		speed_tier:    "NBN750"
		download_mbps: 740
		upload_mbps:   42
		monthly_price: 99.99
		promo: {
			price:  79.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN Home Ultrafast"
		speed_tier:    "NBN1000"
		download_mbps: 820
		upload_mbps:   85
		monthly_price: 109.99
		promo: {
			price:  89.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN12"
		speed_tier:    "NBN12"
		download_mbps: 11
		upload_mbps:   1
		monthly_price: 74.99
		promo: {
			price:  54.99
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}, {
		name:          "NBN25"
		speed_tier:    "NBN25"
		download_mbps: 20
		upload_mbps:   4
		monthly_price: 76.99
		promo: {
			price:  56.99
			months: 6
		}
		category:   "residential"
		technology: "nbn-fw"
		cis_url:    "https://www.tpg.com.au/terms_conditions/CIS/nbn"
	}]
}
