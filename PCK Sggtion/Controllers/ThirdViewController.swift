//
//  ThirdViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/4/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

/* import UIKit

class ThirdViewController: ViewController {

  // var longitude: Double?
  // var latitude: Double?
    var gender: Gender?
    
 //  @IBOutlet weak var locationButton: UIButton!
    
    @IBOutlet weak var genderSegmented: UISegmentedControl!
    
    
   // @IBOutlet weak var genderSegmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
  //  @IBAction func locationButtonPressed(_ sender: Any) {
  //      locationButton.backgroundColor = UIColor.green
  //      let locationPicker = LocationPickerViewController()
        
   //     locationPicker.completion = { location in
     //       self.latitude = location?.coordinate.latitude
       //     self.longitude = location?.coordinate.longitude
            
        }
        
    //    navigationController?.pushViewController(locationPicker, animated: true)
        
 //   }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let homeViewController = segue.destination as? HomeViewController else{return}
        guard let latitude = latitude else {return}
        guard let longitude = longitude else {return}
        
        homeViewController.latitude = latitude
        homeViewController.longitude = longitude
        
        if(genderSegmented.selectedSegmentIndex == 0){
            homeViewController.gender = .male
        }
        else{
            homeViewController.gender = .female
        }
        
    }
    
  //  @IBAction func unwindToStartTrip(segue:UIStoryboardSegue) {
        
  // }
 
 */


