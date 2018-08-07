//
//  ThirdViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/4/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

 import UIKit

class ThirdViewController: ViewController {
    
    var gender: Gender?
  
    @IBOutlet weak var hotelButton: UIButton!
    
    @IBOutlet weak var airbnbButton: UIButton!
    
    @IBOutlet weak var hostelButton: UIButton!
    
    @IBOutlet weak var genderSegmented: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hotelButtonPressed(_ sender: UIButton) {
        hotelButton.backgroundColor = UIColor.blue
        
    }
    
    @IBAction func airbnbButtonPressed(_ sender: Any) {
    }
    
    @IBAction func hostelButtonPressed(_ sender: UIButton) {
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
 



