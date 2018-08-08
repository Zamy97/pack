//
//  FlightsViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 8/8/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class FlightsViewController: UIViewController {
    
    
    
    @IBOutlet weak var flightsView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://www.google.com/flights")
        
        let request = URLRequest(url: url!)
        
        flightsView.load(request)
        
        
    }
}
