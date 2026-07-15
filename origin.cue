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
	notice_period_days: 30
	billing_policy:     "30-day-notice"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	transit_quality: "Standard"
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		default_enabled:        true
		supports_pd:            true
	}
	upstream: enabler: "Superloop"
	plans: [{
		name:          "Everyday nbn™ 25/10"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 95.0
		promo: {
			price:  85.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
		notes:    "1-2 people watching movies or TV shows online, streaming music or browsing."
	}, {
		name:          "Experience nbn™ 50/20"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 109.0
		promo: {
			price:  99.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
		notes:    "2-4 people watching HD videos, casual gaming or downloading movies."
	}, {
		name:          "Extra Fast nbn™ 500/50"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 114.0
		promo: {
			price:  104.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
		notes:    "3-5 people watching and streaming HD videos, gaming or heavy downloaders."
	}, {
		name:          "Ultra Fast nbn™ 1000/100"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 144.0
		promo: {
			price:  134.0
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.originenergy.com.au/internet/terms-conditions/critical-information-summary/"
		notes:    "5+ people with high downloads and uploads, 8K streaming, intense gaming and more."
	}]
}
