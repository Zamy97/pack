//
//  SecondViewViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 7/27/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit

import GooglePlaces
import GoogleMaps

class SecondViewViewController: UIViewController {

     var forecastData = [Weather]()
    
    
    @IBOutlet weak var secondQuestionLabel: UILabel!
    @IBOutlet weak var firstQuestionLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    
    @IBOutlet weak var finalLabel: UILabel!
    
    @IBOutlet weak var locationPrintLabel: UILabel!
    
    
    @IBAction func untindToSecondViewController(_ sender: UIStoryboardSegue) {
        
    }
 
    private var datePicker1 = UIDatePicker()
    private var datePicker2 = UIDatePicker()

    let dateFormatter1 = DateFormatter()
    let dateFormatter2 = DateFormatter()
    
    var locationManager = CLLocationManager()
 
    let txtFieldSearch: UITextField = {
        let tf=UITextField()
        tf.borderStyle = .roundedRect
        tf.backgroundColor = .white
        tf.layer.borderColor = UIColor.darkGray.cgColor
        tf.placeholder="Search for a place"
        tf.translatesAutoresizingMaskIntoConstraints=false
        return tf
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstQuestionLabel.adjustsFontSizeToFitWidth = true
        firstQuestionLabel.minimumScaleFactor = 0.2
        
        secondQuestionLabel.adjustsFontSizeToFitWidth = true
        secondQuestionLabel.minimumScaleFactor = 0.2
        
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.startMonitoringSignificantLocationChanges()
        
        setupViews()
        txtFieldSearch.delegate = self
        
        
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
        
        dateFormatter1.dateFormat = "MMMM dd, yyyy"
        inputTextField.text = dateFormatter1.string(from: Date())
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "foodLocation" {
            let destination = segue.destination as? FoodViewController
            destination?.location = txtFieldSearch.text!
            
        }
        
        switch segue.identifier {
        case "weatherSegue":
            let destination = segue.destination as? WeatherViewTableViewController
            destination?.location = txtFieldSearch.text!
        case "locationSegue":
            WeatherService.location = locationPrintLabel.text

 
            
        default:
            break
        }
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
     view.endEditing(true)
        
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        
        
        dateFormatter1.dateFormat = "MMMM dd, yyyy"
        dateFormatter2.dateFormat = "MMMM dd, yyyy"
        
    
        inputTextField.text = dateFormatter1.string(from: datePicker1.date)
        outputTextField.text = dateFormatter2.string(from: datePicker2.date)
        
        var timeOffset = datePicker2.date.days(from: datePicker1.date)
        // update the label
        timeOffset = timeOffset <= 0 ? 1 : timeOffset
        self.finalLabel.text = timeOffset != 1 ? "\(timeOffset) Days" : "\(timeOffset) Day"   
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

extension SecondViewViewController: CLLocationManagerDelegate, GMSMapViewDelegate, GMSAutocompleteViewControllerDelegate, UITextFieldDelegate {
  
    //MARK: textfield
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        let autoCompleteController = GMSAutocompleteViewController()
        autoCompleteController.delegate = self
        
        let filter = GMSAutocompleteFilter()
        autoCompleteController.autocompleteFilter = filter
        
        self.locationManager.startUpdatingLocation()
        self.present(autoCompleteController, animated: true, completion: nil)
        return false
        
       
    }
    
    // MARK: GOOGLE AUTO COMPLETE DELEGATE
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
     txtFieldSearch.text = place.formattedAddress
        
        // Next line print the location using google places
        locationPrintLabel.text = place.formattedAddress
        
        
        // dismiss after place selected
    self.dismiss(animated: true, completion: nil)
        
        
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        print("ERROR AUTO COMPLETE \(error)")
    }
    
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error while getting location \(error)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager.delegate = nil
        locationManager.stopUpdatingLocation()
    }
    
    func setupTextField(textField: UITextField, img: UIImage){
        textField.leftViewMode = UITextFieldViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 5, y: 5, width: 23, height: 23))
        imageView.image = img
        let paddingView = UIView(frame:CGRect(x: 0, y: 0, width: 30, height: 30))
        paddingView.addSubview(imageView)
        textField.leftView = paddingView
    }
    
    func setupViews() {
        
        self.view.addSubview(txtFieldSearch)
        txtFieldSearch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive=true
        txtFieldSearch.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive=true
        txtFieldSearch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive=true
        txtFieldSearch.heightAnchor.constraint(equalToConstant: 35).isActive=true
        setupTextField(textField: txtFieldSearch, img: #imageLiteral(resourceName: "map_Pin"))
    
    }
    

}

extension Date {
   
    /// Returns the amount of days from another date
    func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
    
    
    
   
 
    
}





