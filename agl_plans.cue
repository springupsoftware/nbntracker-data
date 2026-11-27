package data

agl: [{
	name:          "Home Basic"
	speed_tier:    "NBN25"
	download_mbps: 25
	upload_mbps:   10
	monthly_price: 70.0
	promo: {
		price:    35.0
		months:   3
		end_date: "2026-12-01"
	}
	cis_url: "https://www.agl.com.au/content/dam/digital/agl/documents/critical-information-summary/nbn/agl-fixed-line-lower-cis.pdf"
}, {
	name:          "Home Standard"
	speed_tier:    "NBN50"
	download_mbps: 50
	upload_mbps:   20
	monthly_price: 88.0
	cis_url:       "https://www.agl.com.au/content/dam/digital/agl/documents/critical-information-summary/nbn/agl-fixed-line-lower-cis.pdf"
}, {
	name:          "Home Fast"
	speed_tier:    "NBN100"
	download_mbps: 100
	upload_mbps:   20
	monthly_price: 95.0
	promo: {
		price:    47.0
		months:   3
		end_date: "2026-12-01"
	}
	cis_url: "https://www.agl.com.au/content/dam/digital/agl/documents/critical-information-summary/nbn/agl-fixed-line-lower-cis.pdf"
}, {
	name:          "Home Fast Fibre"
	speed_tier:    "NBN500"
	download_mbps: 500
	upload_mbps:   50
	monthly_price: 95.0
	promo: {
		price:    47.0
		months:   3
		end_date: "2026-12-01"
	}
	cis_url: "https://www.agl.com.au/content/dam/digital/agl/documents/critical-information-summary/nbn/agl-fixed-line-lower-cis.pdf"
}, {
	name:          "Home Ultrafast"
	speed_tier:    "NBN1000"
	download_mbps: 1000
	upload_mbps:   100
	monthly_price: 119.0
	cis_url:       "https://www.agl.com.au/content/dam/digital/agl/documents/critical-information-summary/nbn/agl-fixed-line-lower-cis.pdf"
}, {
	name:          "Home Hyperfast HFC"
	speed_tier:    "NBN2000"
	download_mbps: 2000
	upload_mbps:   100
	monthly_price: 179.0
	cis_url:       "https://www.agl.com.au/content/dam/digital/agl/documents/critical-information-summary/nbn/agl-fixed-line-higher-cis.pdf"
}]
