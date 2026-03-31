package data

providers: origin: #Provider & {
	name:             "Origin Energy"
	slug:             "origin"
	website_url:      "https://www.originenergy.com.au"
	connection_type:  "IPoE"
	cgnat:            true
	cgnat_opt_out:    "paid_static_ip"
	support_location: "Hybrid"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]


	upstream: {
		enabler: "Superloop"
	}

	transit_quality: "Standard"

	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		default_enabled:        true
		supports_pd:            true
	}

	plans: [{
		name:          "Everyday nbn™ 25/10"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 89.0
		promo: {
			price:  44.5
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
	}, {
		name:          "Experience nbn™ 50/20"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 103.0
		promo: {
			price:  51.5
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
	}, {
		name:          "Extra fast nbn™ 500/50"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 107.0
		promo: {
			price:  53.5
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
	}, {
		name:          "Super fast nbn™ 750/50"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 129.0
		promo: {
			price:  64.5
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
	}, {
		name:          "Ultra fast nbn™ 1000/100"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 139.0
		promo: {
			price:  69.5
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
	}]
}
