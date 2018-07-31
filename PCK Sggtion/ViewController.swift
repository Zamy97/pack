//
//  ViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 7/27/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController {
    
 //   var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "Home"
//        self.view.backgroundColor = UIColor.white
//
//
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
//        locationManager.startMonitoringSignificantLocationChanges()
//
//        setupViews()
//        txtFieldSearch.delegate = self
    }
//
//    //MARK: textfield
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        let autoCompleteController = GMSAutocompleteViewController()
//        autoCompleteController.delegate = self
//
//        let filter = GMSAutocompleteFilter()
//        autoCompleteController.autocompleteFilter = filter
//
//        self.locationManager.startUpdatingLocation()
//        self.present(autoCompleteController, animated: true, completion: nil)
//        return false
//    }
//
//    // MARK: GOOGLE AUTO COMPLETE DELEGATE
//    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
//        let lat = place.coordinate.latitude
//        let long = place.coordinate.longitude
//
//        txtFieldSearch.text=place.formattedAddress
//
//        //  chosenPlace = MyPlace(name: place.formattedAddress!, lat: lat, long: long)
//
//
//        self.dismiss(animated: true, completion: nil) // dismiss after place selected
//    }
//
//    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
//        print("ERROR AUTO COMPLETE \(error)")
//    }
//
//    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
//        self.dismiss(animated: true, completion: nil)
//    }
//
//
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print("Error while getting location \(error)")
//    }
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        locationManager.delegate = nil
//        locationManager.stopUpdatingLocation()
//    }
//
//    func setupTextField(textField: UITextField, img: UIImage){
//        textField.leftViewMode = UITextFieldViewMode.always
//        let imageView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
//        imageView.image = img
//        let paddingView = UIView(frame:CGRect(x: 0, y: 0, width: 30, height: 30))
//        paddingView.addSubview(imageView)
//        textField.leftView = paddingView
//    }
//
//    func setupViews() {
//
//        self.view.addSubview(txtFieldSearch)
//        txtFieldSearch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive=true
//        txtFieldSearch.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive=true
//        txtFieldSearch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive=true
//        txtFieldSearch.heightAnchor.constraint(equalToConstant: 35).isActive=true
//        setupTextField(textField: txtFieldSearch, img: #imageLiteral(resourceName: "map_Pin"))
//    }
//
//
//    let txtFieldSearch: UITextField = {
//        let tf=UITextField()
//        tf.borderStyle = .roundedRect
//        tf.backgroundColor = .white
//        tf.layer.borderColor = UIColor.darkGray.cgColor
//        tf.placeholder="Search for a location"
//        tf.translatesAutoresizingMaskIntoConstraints=false
//        return tf
//    }()
   
}

