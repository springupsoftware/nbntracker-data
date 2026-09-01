package data

providers: infinnet: {
	name:             "Infinet Broadband"
	slug:             "infinnet"
	website_url:      "https://www.infinetbroadband.com.au/nbn-satellite-internet-provider/"
	nbn_access_techs: ["fixed-wireless", "satellite"]
	satellite: {
		sky_muster:         true
		sky_muster_premium: true
	}
	support_location: "Australia"
	notes:            "IPSTAR brand. Sky Muster + nbn Fixed Wireless RSP per nbn.co. 1300 101 414"
}
