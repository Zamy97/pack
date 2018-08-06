//
//  FinalViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/6/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    let location = WeatherService.location
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        WeatherService.location = location
        WeatherService.getLocation(location: location!) { (lat, long) in
            print("Location \(long) \(lat)")
            let link = APILink.constructWeatherLink(latitude: long, longitude: lat)
            WeatherService.getWeather(url: link, completion: { (temp) in               self.tempLabel.text = String(temp)
            })
        }
        // Do any additional setup after loading the view.
        
        temperatureLabel.text = location
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
