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


	upstream: {
		backhaul: "Own"
	}
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		default_enabled:        false
	}

	plans: [{
		name:          "NBN12 FTTP Liimitless"
		speed_tier:    "NBN12"
		download_mbps: 12
		upload_mbps:   1
		monthly_price: 74.99
		promo: {
			price:  54.989999999999995
			months: 6
		}
		category: "residential"
	}, {
		name:          "NBN25 FTTP Liimitless"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   4
		monthly_price: 76.99
		promo: {
			price:  56.989999999999995
			months: 6
		}
		category: "residential"
	}, {
		name:          "NBN50 FTTP Liimitless"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   17
		monthly_price: 84.99
		promo: {
			price:  64.99
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
			price:  64.99
			months: 6
		}
		category: "residential"
	}]
}
