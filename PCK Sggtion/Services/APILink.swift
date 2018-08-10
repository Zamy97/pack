//
//  APILink.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/6/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import Foundation

struct APILink {
    
    static func constructWeatherLink(latitude: Double , longitude: Double) -> String {
        let weatherLink = "https://api.darksky.net/forecast/41ccc57fb3966d63f1789ab194a89cf6/\(latitude),\(longitude),2018-07-22T06:24:15?exclude=currently,flags"
        
        return weatherLink
}

}
