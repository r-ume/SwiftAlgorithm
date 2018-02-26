//
//  ViewController.swift
//  countUpApp
//
//  Created by umeki on 2018/02/11.
//  Copyright © 2018年 umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let sumCountLabel: UILabel = {
    let scl = UILabel()
    scl.backgroundColor = UIColor(red: 238/255, green: 2/255, blue: 94/255, alpha: 1)
//    scl.frame          = CGRect(x: 112, y: 130, width: 150, height: 150)
    scl.text           = "0"
    scl.textColor      = UIColor.white
    scl.font           = UIFont(name: "Helvetica-Light", size: CGFloat(40))
    scl.textAlignment   = NSTextAlignment.center
    return scl
  }()
  
  let incrementCountButton: UIButton = {
    let icb = UIButton()
    icb.backgroundColor = UIColor(red: 238/255, green: 2/255, blue: 94/255, alpha: 1)
    icb.frame          = CGRect(x: 235, y: 492, width: 80, height: 80)
    icb.setTitleColor(UIColor.white, for: .normal)
    icb.titleLabel?.font = UIFont(name: "Helvetica-Light", size: CGFloat(30))
    icb.setTitle("+", for: .normal)
    icb.titleLabel?.textAlignment   = NSTextAlignment.center
    return icb
  }()
  
  let cancelButton: UIButton = {
    let cb = UIButton()
    cb.backgroundColor = UIColor(red: 238/255, green: 2/255, blue: 94/255, alpha: 1)
    cb.frame          = CGRect(x: 147, y: 492, width: 80, height: 80)
    cb.setTitleColor(UIColor.white, for: .normal)
    cb.titleLabel?.font = UIFont(name: "Helvetica-Light", size: CGFloat(30))
    cb.setTitle("c", for: .normal)
    cb.titleLabel?.textAlignment   = NSTextAlignment.center
    return cb
  }()
  
  let decrementCountButton: UIButton = {
    let dcb = UIButton()
    dcb.backgroundColor = UIColor(red: 238/255, green: 2/255, blue: 94/255, alpha: 1)
    dcb.frame          = CGRect(x: 59, y: 492, width: 80, height: 80)
    dcb.setTitleColor(UIColor.white, for: .normal)
    dcb.titleLabel?.font = UIFont(name: "Helvetica-Light", size: CGFloat(30))
    dcb.setTitle("-", for: .normal)
    dcb.titleLabel?.textAlignment   = NSTextAlignment.center
    return dcb
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = UIColor(red: 135/255, green: 199/255, blue: 52/255, alpha: 1)
  
    self.view.addSubview(incrementCountButton)
    self.view.addSubview(sumCountLabel)
    self.view.addSubview(cancelButton)
    self.view.addSubview(decrementCountButton)
  
    let centerX = NSLayoutConstraint(item: self.sumCountLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
    
    self.view.addConstraints([centerX])
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

