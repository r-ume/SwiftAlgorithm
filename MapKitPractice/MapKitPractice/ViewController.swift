//
//  ViewController.swift
//  MapKitPractice
//
//  Created by umeki on 2018/01/20.
//  Copyright © 2018年 umeki. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

  let myMapView = MKMapView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    myMapView.frame = self.view.frame
    self.view.addSubview(myMapView)
    
    let longPressGesture = UILongPressGestureRecognizer()
    longPressGesture.addTarget(self, action: #selector(longPressed(sender:)))
    myMapView.addGestureRecognizer(longPressGesture)
    
    myMapView.delegate = self
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
  
  
  
  
  
  
  
  
  
  
}

