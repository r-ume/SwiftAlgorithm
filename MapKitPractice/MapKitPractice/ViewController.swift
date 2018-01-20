//
//  ViewController.swift
//  MapKitPractice
//
//  Created by umeki on 2018/01/20.
//  Copyright © 2018年 umeki. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

  let myMapView = MKMapView()
  let myLocationManager = CLLocationManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    myMapView.frame = self.view.frame
    self.view.addSubview(myMapView)
    
    let longPressGesture = UILongPressGestureRecognizer()
    longPressGesture.addTarget(self, action: #selector(longPressed(sender:)))
    myMapView.addGestureRecognizer(longPressGesture)
    
    myMapView.showsUserLocation = true

    myMapView.delegate = self
    self.myLocationManager.delegate = self
    
    let status = CLLocationManager.authorizationStatus()
    if status == CLAuthorizationStatus.notDetermined {
      self.myLocationManager.requestAlwaysAuthorization()
    }
    
    self.myLocationManager.startUpdatingLocation()
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @objc func longPressed(sender: UILongPressGestureRecognizer) {
    if sender.state != UIGestureRecognizerState.changed {
      return
    }
    
    let tappedLocation = sender.location(in: myMapView)
    let tappedPoint = myMapView.convert(tappedLocation, toCoordinateFrom: myMapView)
    let annotation = MKPointAnnotation()
    annotation.coordinate = tappedPoint
    annotation.title = "タイトル"
    annotation.subtitle = "サブタイトル"
    self.myMapView.addAnnotation(annotation)
  }
  
  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    if annotation as? MKUserLocation == mapView.userLocation {
      return nil
    }
    
    var annotationView = myMapView.dequeueReusableAnnotationView(withIdentifier: "annotation") as? MKPinAnnotationView
    if annotationView == nil {
      annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "annotation")
    }
    
    //落下アニメーションを有効にする
    annotationView?.animatesDrop = true
    
    //ピンがタップされた時に出るビューを表示可能にする
    annotationView?.canShowCallout = true
    
    //ドラッグ可能にする
    annotationView?.isDraggable = true
    
    return annotationView
  }
  
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    let myLocation = locations.last! as CLLocation
    let currentLocation = myLocation.coordinate

    let mySpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    let myRegion = MKCoordinateRegionMake(currentLocation, mySpan)
    //表示領域のアニメーション付きで適用
    myMapView.setRegion(myRegion, animated: true)
  }
  //５.現在地の取得に失敗した場合の処理
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print("現在地の取得に失敗しました")
  }
}

