//
//  ThirdViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/4/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

 import UIKit

class ThirdViewController: ViewController {
    
    @IBAction func nextButton(_ sender: UIButton) {
    }
    var gender: Gender?
    @IBOutlet weak var thirdViewQuestion: UILabel!
    
    @IBOutlet weak var hotelButton: UIButton!
    
    @IBOutlet weak var airbnbButton: UIButton!
    
    @IBOutlet weak var hostelButton: UIButton!
    
    @IBOutlet weak var genderSegmented: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        thirdViewQuestion.adjustsFontSizeToFitWidth = true
        thirdViewQuestion.minimumScaleFactor = 0.2
        
    }
    
 
    @IBAction func hotelButtonPressed(_ sender: UIButton) {
        
        if hotelButton.isSelected {
            hotelButton.setImage(UIImage(named: "Hotel1"), for: .normal)
            hotelButton.isSelected = false
        }else {
            hotelButton.setImage(UIImage(named: "Hotel2"), for: .selected)
            hotelButton.isSelected = true
        }
  
        
    }
    
    @IBAction func airbnbButtonPressed(_ sender: Any) {
        
        if airbnbButton.isSelected {
            airbnbButton.setImage(UIImage(named: "Airbnb1"), for: .normal)
            airbnbButton.isSelected = false
        }else {
            airbnbButton.setImage(UIImage(named: "Airbnb2"), for: .selected)
            airbnbButton.isSelected = true
        }
    }
    
    @IBAction func hostelButtonPressed(_ sender: UIButton) {
        
        if hostelButton.isSelected {
            hostelButton.setImage(UIImage(named: "Hostel1"), for: .normal)
            hostelButton.isSelected = false
        }else {
            hostelButton.setImage(UIImage(named: "Hostel2"), for: .selected)
            hostelButton.isSelected = true
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let FinalViewController = segue.destination as? FinalViewController else{return}
        
        if(genderSegmented.selectedSegmentIndex == 0){
            FinalViewController.gender = .male
        }
        else{
            FinalViewController.gender = .female
        }
        
    }

   }
 



