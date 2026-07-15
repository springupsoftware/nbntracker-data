package data

belong: [{
	name:          "Fast"
	speed_tier:    "NBN500"
	download_mbps: 500
	upload_mbps:   50
	monthly_price: 95.0
	promo: {
		price:  47.0
		months: 2
	}
	category: "residential"
}, {
	name:          "Premium"
	speed_tier:    "NBN100"
	download_mbps: 100
	upload_mbps:   20
	monthly_price: 95.0
	promo: {
		price:  47.0
		months: 2
	}
	category: "residential"
}, {
	name:          "Standard Plus"
	speed_tier:    "NBN50"
	download_mbps: 50
	upload_mbps:   20
	monthly_price: 91.0
	category:      "residential"
}, {
	name:          "Ultrafast"
	speed_tier:    "NBN1000"
	download_mbps: 1000
	upload_mbps:   100
	monthly_price: 110.0
	promo: {
		price:  55.0
		months: 2
	}
	category: "residential"
}, {
	name:          "Starter"
	speed_tier:    "NBN25"
	download_mbps: 25
	upload_mbps:   10
	monthly_price: 75.0
	category:      "residential"
}]
