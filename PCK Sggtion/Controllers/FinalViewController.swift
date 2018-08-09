//
//  FinalViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/6/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var recArray = [String](){
        didSet{
            tableView.reloadData()
        }
    }
    
    var temperature: Double?
        
    var gender: Gender = .none
    
    let location = WeatherService.location
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        temperatureLabel.adjustsFontSizeToFitWidth = true
       temperatureLabel.minimumScaleFactor = 0.2
        
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
        
             temperatureLabel.text = location
        

        print(self.recArray)
        self.tableView.reloadData()
    
    }
    
    @IBAction func yelpButtonTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "foodLocation", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "takeLocation":
            let destination = segue.destination as? WeatherViewTableViewController
            destination?.location = location!
            
//            if segue.identifier == "foodLocation"{
//                let destination = segue.destination as? FoodViewController
//                destination?.location = temperatureLabel.text!
            
        case "foodLocation":
            let destination = segue.destination as? FoodViewController
            destination?.location = location!
            
        default:
            break
            
//
            }
       
     
                

            
        }

  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "clothesCell", for: indexPath) as! ClothesTableViewCell
     
        let clothingItem = recArray[indexPath.row]
        cell.clothesLabel.text = clothingItem
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
      return recArray.count
    }
    



}
