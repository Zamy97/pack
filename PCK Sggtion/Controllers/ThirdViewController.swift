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
  
    @IBOutlet weak var genderSegmented: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
 



