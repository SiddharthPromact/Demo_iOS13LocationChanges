//
//  ViewController.swift
//  Demo_iOS13LocationChanges
//
//  Created by Sid Shah on 18/12/19.
//  Copyright © 2019 Siddharth Shah. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {
    //variables
    var mapView : MKMapView?
    var locationManager = CLLocationManager()
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addMapView()
        //Location Manager Request
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.allowsBackgroundLocationUpdates = true
        locationManager.pausesLocationUpdatesAutomatically = false
        mapView?.showsUserLocation = true
    }
    // MARK: - Custom Method
    func addMapView() {
        mapView =  MKMapView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        self.view.addSubview(mapView!)
        //Constraints
        NSLayoutConstraint.activate([
            mapView!.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            mapView!.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView!.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView!.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    // MARK: - Memory Management Methods
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Memory Warning occured")
    }
    // MARK: - De-init method
    deinit {
        print("ViewController Class de-init")
    }
}

