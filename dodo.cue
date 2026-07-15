package data

providers: dodo: #Provider & {
	name:             "Dodo"
	slug:             "dodo"
	website_url:      "https://www.dodo.com"
	connection_type:  "PPPoE"
	cgnat:            true
	cgnat_opt_out:    "available"
	support_location: "Offshore"
	static_ip: {
		available:    true
		monthly_cost: 5.0
	}
	billing_policy: "end-of-cycle"
	pop_states: ["NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT"]
	transit_quality: "Standard"
	ipv6: {
		available:              true
		prefix_delegation_size: 56
		assignment:             "dynamic"
		supports_pd:            true
	}
	upstream: backhaul: "Vocus"
	plans: [{
		name:          "everyday nbn25/10"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 73.99
		promo: {
			price:  43.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.dodo.com/sites/dodo/files/cis/Dodo_NBN_CIS.pdf"
	}, {
		name:          "value nbn50/20"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 87.99
		promo: {
			price:  57.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.dodo.com/sites/dodo/files/cis/Dodo_NBN_CIS.pdf"
	}, {
		name:          "fast nbn100/20"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 92.99
		promo: {
			price:  62.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.dodo.com/sites/dodo/files/cis/Dodo_NBN_CIS.pdf"
	}, {
		name:          "fast plus nbn500/50"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 92.99
		promo: {
			price:  62.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.dodo.com/sites/dodo/files/cis/Dodo_NBN_CIS.pdf"
	}, {
		name:          "superfast nbn750/50"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 99.99
		promo: {
			price:  69.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.dodo.com/sites/dodo/files/cis/Dodo_NBN_CIS.pdf"
	}, {
		name:          "ultrafast nbn1000/100"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 109.99
		promo: {
			price:  79.99
			months: 6
		}
		category: "residential"
		cis_url:  "https://www.dodo.com/sites/dodo/files/cis/Dodo_NBN_CIS.pdf"
	}]
}
