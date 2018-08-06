//
//  ConstructAPILink.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/5/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import Foundation

struct ConstructAPILink {
    
    static func constructWeatherLink(latitude: Double , longitude: Double) -> String{
        let weatherLink = "https://api.darksky.net/forecast/f169470b0e9484eb75680a0a9d5b51b3/\(latitude),\(longitude),2018-07-22T06:24:15?exclude=currently,flags"
        return weatherLink
    }
    
    static func constructLocationLink(latitude: Double, longitude: Double) -> String {
        let locationLink = "https://maps.googleapis.com/maps/api/geocode/json?latlng=\(latitude),\(longitude)&key=AIzaSyBwSvp514RGEiCmMuVrZ5_L_o98yvnTd-k"
        return locationLink
        
    }
    
}

