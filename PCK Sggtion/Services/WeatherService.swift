//
//  WeatherService.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/6/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import CoreLocation

struct WeatherService {
    
    static var location: String?
    
    static func getWeather(url: String, completion: @escaping (Double) -> Void) {
        
        let newURL = URL(string: url)
        let requestURL = URLRequest(url: newURL!)

        print(requestURL)
        Alamofire.request(requestURL).validate().responseJSON() { response in
            
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let json = JSON(value)
                    //   print(json)
                    var tempsArray = [Double]()
                    let temperatureArray = json["hourly"]["data"].arrayValue
                    for item in temperatureArray {
                        tempsArray.append(item["temperature"].doubleValue)
                        
                    }
                    print(tempsArray)
                    let sum = tempsArray.reduce(0,+)
                    let average = sum/Double(tempsArray.count)
                    completion(average)
                    
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    static func getLocation(location:String, completion: @escaping (CLLocationDegrees, CLLocationDegrees) -> Void) {
        CLGeocoder().geocodeAddressString(location) { (placemarks:[CLPlacemark]?, error:Error?) in
            if error == nil {
                if let location = placemarks?.first?.location {
                    completion(location.coordinate.longitude, location.coordinate.latitude)
                }
            }
        }
    }

}
