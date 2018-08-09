//
//  FoodViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/8/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class FoodViewController: UIViewController {
    
    var location = String()

    
    
    @IBOutlet weak var foodView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    //    let trimmedLocation = self.location.trimmingCharacters(in: .whitespaces)
        let url = URL(string: "https://www.yelp.com/search?find_loc=Berkeley")

        
//      guard let url = URL(string:"https://www.yelp.com/search?find_loc=\(self.location)") else{return}
    
        
        let request = URLRequest(url: (url)!)

        foodView.load(request)
        
        
}
}
