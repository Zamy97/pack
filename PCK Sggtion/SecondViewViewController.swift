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
    @IBOutlet weak var outputTextField: UITextField!
    
    private var datePicker1 = UIDatePicker()
    private var datePicker2 = UIDatePicker()

    let dateFormatter1 = DateFormatter()
    let dateFormatter2 = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker1 = UIDatePicker()
        datePicker1.datePickerMode = .date
        datePicker1.addTarget(self, action: #selector(SecondViewViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        datePicker2 = UIDatePicker()
        datePicker2.datePickerMode = .date
        datePicker2.addTarget(self, action: #selector(SecondViewViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SecondViewViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        inputTextField.inputView = datePicker1
        outputTextField.inputView = datePicker2
   
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
     view.endEditing(true)    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        
        
        dateFormatter1.dateFormat = String("MM/dd/yyyy")
        dateFormatter2.dateFormat = String("MM/dd/yyyy")
        
        inputTextField.text = String(dateFormatter1.string(from: datePicker1.date))
        outputTextField.text = String(dateFormatter2.string(from: datePicker2.date))
   
    }
    
    func updateDateField(sender: UIDatePicker) {
        if sender == inputTextField
        {
            inputTextField.text = String(dateFormatter1.string(from: sender.date))
        }
        if sender == outputTextField
        {
            outputTextField.text = String(dateFormatter2.string(from: sender.date))
        }
       
    }
  

}
