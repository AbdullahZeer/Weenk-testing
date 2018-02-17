//
//  ViewController.swift
//  testW
//
//  Created by Abdulrahman Alzeer on 06/02/2018.
//  Copyright © 2018 Abdulrahman Alzeer. All rights reserved.
//

import UIKit
import Mapbox
import ARCL
import ARKit
import Motion
import SwipeNavigationController
import CoreLocation

class ViewController: UIViewController , CLLocationManagerDelegate {
    
    let data = UserData()
    let locationManager = CLLocationManager()
    
    
    @IBOutlet var ARview: SceneLocationView! = SceneLocationView()
    
    
    @IBOutlet weak var MyMap: MGLMapView!
    
    
    @IBAction func toAR(_ sender: UISwitch) {
        
        if sender.isOn {
            ARview.run()
            
            MyMap.zoomLevel = 18
            MyMap.animate(.translate(x: 120, y: 180, z: 1), .scale(x:0.2668,y:0.15,z:1), .corner(radius:(187.5  * 1.4)))
        }else{
            ARview.pause()
            MyMap.animate(.translate(x:0, y: 0, z: 1), .scale(x:1,y:1,z:1), .corner(radius:(0)))
        }
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        MyMap.logoView.isHidden = true
        MyMap.attributionButton.isHidden = true
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1];
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
            
            data.lat = location.coordinate.latitude
            data.lon = location.coordinate.longitude
            
            mapUpdate()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    func mapUpdate(){
        
        let hello = MGLPointAnnotation()
        hello.coordinate = CLLocationCoordinate2D(latitude: data.lat!, longitude: data.lon!)
        hello.title = "Hello world!"
        hello.subtitle = "Welcome to my marker"
        
        
        MyMap.setCenter(CLLocationCoordinate2D(latitude: data.lat!, longitude: data.lon!), zoomLevel: 12, animated: false)
        MyMap.addAnnotation(hello)
        
        
        
    }

}

