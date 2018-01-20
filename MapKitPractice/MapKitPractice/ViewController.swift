//
//  ViewController.swift
//  MapKitPractice
//
//  Created by umeki on 2018/01/20.
//  Copyright © 2018年 umeki. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

  let myMapView = MKMapView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    myMapView.frame = self.view.frame
    self.view.addSubview(myMapView)
    
    let longPressGesture = UILongPressGestureRecognizer()
    longPressGesture.addTarget(self, action: #selector(longPressed(sender:)))
    myMapView.addGestureRecognizer(longPressGesture)
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
    
    print("Hello World!!")
  }
}

