package data

providers: lightningip: {
	name:             "Lightning IP"
	slug:             "lightningip"
	website_url:      "https://www.lightningip.com.au"

	nbn_access_techs: ["fixed-line", "fixed-wireless", "satellite"]

	satellite: {
		sky_muster:         false
		sky_muster_premium: true
	}
	connection_type:  "IPoE"
	cgnat:            false
	cgnat_opt_out:    "N/A"
	static_ip: {
		available:    true
		monthly_cost: 0
		notes:       "Static IP included by default, will be changing to CGNAT with paid opt-out."
	}

	voip_available: true
	voip_notes:       "Standalone VoIP available. Can BYO VoIP device."

	plans: [{
		name:          "Basic"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   10
		monthly_price: 75
		category:      "residential"
		technology:    "nbn"
	}, {
		name:          "Standard"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   20
		monthly_price: 85
		category:      "residential"
		technology:    "nbn"
	}, {
		name:          "Fast"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 89
		category:      "residential"
		technology:    "nbn"
		notes:         "FTTN/FTTB/FTTC only."
	}, {
		name:          "Fast Fibre"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   50
		monthly_price: 89
		category:      "residential"
		technology:    "nbn"
		notes:         "FTTP/HFC only."
	}, {
		name:          "Super Fast"
		speed_tier:    "NBN750"
		download_mbps: 750
		upload_mbps:   50
		monthly_price: 99
		category:      "residential"
		technology:    "nbn"
		notes:         "FTTP/HFC only."
	}, {
		name:          "Ultra Fast"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   100
		monthly_price: 109
		category:      "residential"
		technology:    "nbn"
		notes:         "FTTP/HFC only."
	}, {
		name:          "Hyper Fast"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   200
		monthly_price: 159
		category:      "residential"
		technology:    "nbn"
		notes:         "FTTP only."
	}, {
		name:          "Hyper Fast (HFC)"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   100
		monthly_price: 159
		category:      "residential"
		technology:    "nbn"
		notes:         "HFC only."
	}, {
		name:          "Pro 100"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   40
		monthly_price: 100
		category:      "business"
		technology:    "nbn"
		notes:         "FTTN/FTTB/FTTC only. Includes nbn 12hr eSLA."
	}, {
		name:          "Pro 250"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 100
		category:      "business"
		technology:    "nbn"
		notes:         "FTTP/HFC only. Includes nbn 12hr eSLA."
	}, {
		name:          "Priority 250"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   100
		monthly_price: 110
		category:      "business"
		technology:    "nbn"
		notes:         "FTTP/HFC only. Includes nbn 4hr eSLA."
	}, {
		name:          "Priority 500"
		speed_tier:    "NBN500"
		download_mbps: 500
		upload_mbps:   200
		monthly_price: 120
		category:      "business"
		technology:    "nbn"
		notes:         "FTTP only. Includes nbn 4hr eSLA."
	}, {
		name:          "Priority 1000"
		speed_tier:    "NBN1000"
		download_mbps: 1000
		upload_mbps:   400
		monthly_price: 140
		category:      "business"
		technology:    "nbn"
		notes:         "FTTP only. Includes nbn 4hr eSLA."
	}, {
		name:          "Priority 2000"
		speed_tier:    "NBN2000"
		download_mbps: 2000
		upload_mbps:   500
		monthly_price: 200
		category:      "business"
		technology:    "nbn"
		notes:         "FTTP only. Includes nbn 4hr eSLA."
	}, {
		name:          "FW Basic"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   5
		monthly_price: 75
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "FW Plus"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   20
		monthly_price: 85
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "FW Home Fast"
		speed_tier:    "NBN250"
		download_mbps: 250
		upload_mbps:   20
		monthly_price: 89
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "FW Super Fast"
		speed_tier:    "NBN400"
		download_mbps: 400
		upload_mbps:   40
		monthly_price: 99
		category:      "residential"
		technology:    "nbn-fw"
	}, {
		name:          "Satellite Basic"
		speed_tier:    "NBN25"
		download_mbps: 25
		upload_mbps:   5
		monthly_price: 75
		category:      "residential"
		technology:    "satellite"
	}, {
		name:          "Satellite Standard"
		speed_tier:    "NBN50"
		download_mbps: 50
		upload_mbps:   5
		monthly_price: 90
		category:      "residential"
		technology:    "satellite"
	}, {
		name:          "Satellite Premium"
		speed_tier:    "NBN100"
		download_mbps: 100
		upload_mbps:   5
		monthly_price: 100
		category:      "residential"
		technology:    "satellite"
	}]

	support_location: "Australia"
	notice_period_days: 0
	billing_policy: "end-of-month"

	payment_methods: {
		direct_debit: {
			available: true
		}
		bpay: {
			available: true
			notes:       "$1 Surcharge."
		}
		visa_mc: {
			available: true
			notes:       "Automatic payments only"
		}
		amex: {
			available: false
		}
		paypal: {
			available: false
		}
	}
	pop_states: [ "NSW", "VIC", "QLD", "WA", "SA", "TAS", "NT", "ACT" ]
	global_transit: true
	plan_change_period: "anytime"

	ipv6: {
		available: false
		notes: "IPv6 estimated available by end of 2026."
	}

	notes: "Regional provider based in Albury-Wodonga, active at all 121 POIs. Plan information added by Lightning IP staff 2026-10-07."
}