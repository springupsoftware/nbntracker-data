package data

// 1. Updated for 2026 "Accelerate Great" tiers
#SpeedTier: "NBN12" | "NBN25" | "NBN50" | "NBN100" | "NBN250" | "NBN500" | "NBN750" | "NBN1000" | "NBN2000"

#ConnectionType: "PPPoE" | "IPoE" | "unknown"
#CGNATOptOut:    "available" | "unavailable" | "unknown" | "N/A"

#StaticIP: {
	available:    bool | *true
	monthly_cost: number | *0 // 0 = Included
	notes?:       string
}

#Plan: {
	name:          string & !=""
	speed_tier:    #SpeedTier
	download_mbps: int & >0
	upload_mbps:   int & >0
	monthly_price: number & >0

	// Support for 2026's multi-stage promo cycles
	promo?: {
		price:  number & >0
		months: int & >0
	}

	data_cap_gb?: int & >0
	category:     "residential" | "business" | "enterprise"

	features: {
		static_ip: #StaticIP | *{available: false}
		esla:        bool | *false
		symmetrical: bool | *false
		// New for 2026: 4G/5G backup inclusion
		backup_4g: bool | *false
	}

	cis_url?: string
	notes?:   string
}

#Provider: {
	name:            string & !=""
	slug:            string & !=""
	website_url:     string & !=""
	connection_type: #ConnectionType | *"unknown"
	uses_cgnat:      bool | *false
	cgnat_opt_out:   #CGNATOptOut | *"unknown"

	// Strategic: Add a global "Default Static IP" for the provider
	default_static_ip_cost?: number

	plans: [...#Plan]

	referral_params?: string
	notes?:           string
}
