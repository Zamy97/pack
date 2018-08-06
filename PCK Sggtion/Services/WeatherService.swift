//
//  WeatherService.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/5/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct WeatherService {
    
    static func getWeather(url: String, completion: @escaping (Double) -> Void){
        //TODO: Call url passed from start trip and then return the escaping closure to the home view to display the temperature
        let newURL = URL(string: url)
        let requestURL = URLRequest(url: newURL!)
        
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
                    let sum =  tempsArray.reduce(0,+)
                    let average = sum/Double(tempsArray.count)
                    completion(average)
                    
                }
            case .failure(let error):
                print(error)
            }
        }
        
        
    }
    
    static func getLocation(url: String, completion: @escaping (String) -> Void){
        let newURL = URL(string: url)
        let requestURL = URLRequest(url: newURL!)
        
        Alamofire.request(requestURL).validate().responseJSON() { response in
            
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let json = JSON(value)
                    //   print(json)
                    //   print(json["results"][4]["address_components"]["short_name"].stringValue)
                    
                    let resultsJSON = json["results"].arrayValue
                    
                    
                    let city = resultsJSON[0]["address_components"][3]["long_name"].stringValue
                    //  print(city)
                    let state = resultsJSON[0]["address_components"][5]["short_name"].stringValue
                    //   print(state)
                    let locationLabelText = city + "," + state
                    completion(locationLabelText)
                    
                    
                }
            case .failure(let error):
                print(error)
            }
        }
        
        
    }
}

