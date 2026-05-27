package data

providers: iinet: #Provider & {
	name:             "iiNet"
	slug:             "iinet"
	website_url:      "https://www.iinet.net.au"
	connection_type:  "PPPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	support_location: "Offshore"
	static_ip: {
		available:    false
		monthly_cost: 0.0
	}
	billing_policy: "pro-rata"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	transit_quality: "Standard"
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		supports_pd:            true
	}
	upstream: backhaul: "Own"
	plans: [{
		name:          "NBN25 FTTP Liimitless"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   8
		monthly_price: 79.99
		promo: {
			price:  59.989999999999995
			months: 6
		}
		category: "residential"
	}, {
		name:          "NBN50 FTTP Liimitless"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 89.99
		promo: {
			price:  69.99
			months: 6
		}
		category: "residential"
	}, {
		name:          "NBN500 FTTP Liimitless"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   42
		monthly_price: 94.99
		promo: {
			price:  69.99
			months: 6
		}
		category: "residential"
	}]
}
