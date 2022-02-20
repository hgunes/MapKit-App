//
//  ViewController.swift
//  MapKit-App
//
//  Created by Harun Gunes on 20/02/2022.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
  
  let mapView = MKMapView()
  var locationManager: CLLocationManager!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureMapView()
    enableLocationServices()
  }

  
  func configureMapView() {
    view.addSubview(mapView)
    mapView.translatesAutoresizingMaskIntoConstraints = false
    
    mapView.showsUserLocation = true
    mapView.userTrackingMode = .follow
    
    mapView.addConstraintsToFillView(view: view)
  }

}

extension ViewController: CLLocationManagerDelegate {
  
  func enableLocationServices() {
    locationManager = CLLocationManager()
    locationManager.delegate = self
    
    switch CLLocationManager.authorizationStatus() {
    case .notDetermined:
      print("NOT DETERMINED")
      
      DispatchQueue.main.async {
        self.present(LocationRequestController(), animated: true)
      }
      
    case .restricted:
      print("RESTRICTED")
    case .denied:
      print("DENIED")
    case .authorizedAlways:
      print("AUTHORIZED ALWAYS")
    case .authorizedWhenInUse:
      print("AUTHORIZED WHEN IN USE")
    @unknown default:
      print("---")
    }
  }
}
