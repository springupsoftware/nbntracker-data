package data

// 1. Updated for 2026 "Accelerate Great" tiers
#SpeedTier: "NBN12" | "NBN25" | "NBN50" | "NBN100" | "NBN250" | "NBN500" | "NBN750" | "NBN1000" | "NBN2000"

#ConnectionType: "PPPoE" | "IPoE" | "unknown"
#CGNATOptOut:    "available" | "unavailable" | "unknown" | "N/A" | "paid_static_ip"
#State:          "NSW" | "VIC" | "QLD" | "WA" | "SA" | "TAS" | "NT" | "ACT"

#PaymentMethod: {
	available:     bool | *true
	surcharge_pct: number & >=0 & <=10 | *0
	notes?:        string
}

#PaymentMethods: {
	// absent = unknown; present = explicitly modelled
	direct_debit?: #PaymentMethod
	bpay?:         #PaymentMethod
	visa_mc?:      #PaymentMethod
	amex?:         #PaymentMethod
	paypal?:       #PaymentMethod
}

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

	cis_url?: string
	notes?:   string
}

#Upstream: {
	// The "White Label" or Platform provider (e.g., Telcoinabox, Aussie Carbon)
	enabler?: "Telcoinabox" | "Aussie Broadband" | "Superloop" | "Vocus" | "Swoop" | "None" 

	// The physical Backhaul provider to the 121 POIs
	backhaul?: "Aussie Broadband" | "Superloop" | "Vocus" | "Telstra" | "Own"

	// The Domestic Transit provider (often different from backhaul)
	domestic_transit?: "Aussie Broadband" | "Superloop" | "Vocus" | "Telstra" | "Own"
}

#IPv6: {
	available: bool | *false

	// The size of the delegated prefix (e.g., 56, 48, 64)
	// 56 is the "Standard" for high-end Aussie RSPs
	prefix_delegation_size?: 48 | 56 | 60 | 64

	// How the address is assigned
	assignment: "dynamic" | "static" | "sticky" | *"dynamic"

	// Common in AU: some RSPs have it but it's disabled by default
	default_enabled: bool | *false

	// Some RSPs (like Telstra/Optus) don't support Prefix Delegation properly
	supports_pd: bool | *true

	notes?: string
}


#Provider: {
	name:            string & !=""
	slug:            string & !=""
	website_url:     string & !=""
	connection_type: #ConnectionType | *"unknown"
	cgnat:           bool | *false
	cgnat_opt_out:   #CGNATOptOut | *"unknown"
	static_ip: #StaticIP | *{available: false}

	plans: [...#Plan] // embedded (legacy); plans loaded from _plans map for split format

	referral_params?:   string
	notes?:             string
	support_location:   string | *"" // plain string — union removed so Go Decode works even when field is absent
	notice_period_days: int | *0
	billing_policy:     string | *"" // plain string — union removed for same reason

	payment_methods?: #PaymentMethods
	pop_states?: [...#State]
	global_transit?:     bool | *false
	plan_change_period?: "daily" | "monthly" | "anytime" | "unknown"

	ipv6: #IPv6 | *{available: false}

	// Linking the upstream
	upstream: #Upstream

	// Specific tag for the GSL-backed gamers we discussed
	transit_quality: "GSL" | "Standard" | "Premium" | *"Standard"

}

// Top-level _plans map keyed by provider slug. Each slug_plans.cue file
// contributes one key so CUE merges them into a single map.
_plans: {[string]: [{#Plan}]}

...
