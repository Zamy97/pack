//
//  FinalViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/6/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var recArray = [String]()
    
    var temperature: Double?
        
    var gender: Gender = .none
    
    let location = WeatherService.location
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        WeatherService.location = location
        
        WeatherService.getLocation(location: location!) { (lat, long) in
            print("Location \(long) \(lat)")
            
            let link = APILink.constructWeatherLink(latitude: long, longitude: lat)
            WeatherService.getWeather(url: link,completion: { (temp) in
                print(temp)
               self.recArray = ClothingModelLogic.getClothing(temp: temp, gender: self.gender)
                print(self.recArray)
             
                
             
                 let roundedTemp = Int(temp) 
                self.temperature = Double(roundedTemp)
                self.tempLabel.text = String(roundedTemp) + "˚"
            })
        }
        // Do any additional setup after loading the view.
        
        temperatureLabel.text = location
        
    //     temperature = tempLabel.text
            
        
       
        print(recArray)
        self.tableView.reloadData()
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "clothesCell", for: indexPath) as! ClothesTableViewCell
      //  guard let recArray = recArray else
     //   {return cell}
        let clothingItem = recArray[indexPath.row]
        cell.clothesLabel.text = clothingItem
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     //   guard let recArray = recArray else {return 0}
      return recArray.count
    }
    

   

}
