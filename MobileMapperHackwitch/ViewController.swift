//
//  ViewController.swift
//  MobileMapperHackwitch
//
//  Created by Aaron Rudloff 2019 on 4/1/19.
//  Copyright © 2019 Aaron Rudloff 2019. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, CLLocationManagerDelegate{

    var currentLocation: CLLocation!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locationManager = CLLocationManager()
        
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        func locationManager ( _ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
        {
            currentLocation = locations[0]
        }
    }
    @IBOutlet weak var mapView: MKMapView!
    
    

    
    

}

