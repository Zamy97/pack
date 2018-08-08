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
    
    
    @IBOutlet weak var foodView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://www.yelp.com/")
        
        let request = URLRequest(url: url!)
        
        foodView.load(request)
        
        
}
}
