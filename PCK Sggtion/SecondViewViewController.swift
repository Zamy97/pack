//
//  SecondViewViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 7/27/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit
import CVCalendar
import GooglePlaces
import GoogleMaps

class SecondViewViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
     private var datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        
      datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(SecondViewViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SecondViewViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        inputTextField.inputView = datePicker
        
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        inputTextField.text = dateFormatter.string(from: datePicker.date)
       
        
        
        
    }
    
    

}
