package data

#SpeedTier:      "NBN12" | "NBN25" | "NBN50" | "NBN100" | "NBN250" | "NBN500" | "NBN1000" | "NBN2000"

#ConnectionType: "PPPoE" | "IPoE" | "unknown"
#CGNATOptOut:    "available" | "unavailable" | "unknown" | "N/A"

#Plan: {
	name:           string & !=""
	speed_tier:     #SpeedTier
	download_mbps:  int & >0
	upload_mbps:    int & >0
	monthly_price:  number & >0  // ongoing price
	intro_price?:   number & >0  // discounted price during intro period
	intro_months?:  number & >0       // length of intro period in months
	data_cap_gb?:   int & >0 // absent = unlimited
	notes?:         string
}

#Provider: {
	name:            string & !=""
	slug:            string & !=""
	website_url:     string & !=""
	connection_type: #ConnectionType | *"unknown"
	uses_cgnat:      bool | *false
	cgnat_opt_out:   #CGNATOptOut | *"unknown"
	plans: [...#Plan]
	notes?: string
	referral_params?: string
}
