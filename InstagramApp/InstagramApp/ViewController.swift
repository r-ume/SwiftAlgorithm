//
//  ViewController.swift
//  InstagramApp
//
//  Created by umeki on 2017/11/26.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var filterScrollView: UIScrollView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    filterScrollView.contentSize = CGSize(width: 730, height: 150)
    
    setEffectGroup(x: CGFloat(10), action:  #selector(ViewController.tappedButton(_:)), color: UIColor.red, text: "Original")

  }
  
  @objc func tappedButton(_ sender: UIButton){
    print("Button tapped")
  }
  
  func makeButton(x: CGFloat, action: Selector) -> UIButton {
    let button = UIButton()
    button.frame = CGRect(x: x, y: 30, width: 100, height: 100)
    button.addTarget(self, action: action, for: .touchUpInside)
    button.setBackgroundImage(UIImage(named: "cat.png"), for: UIControlState.normal)
    button.clipsToBounds = true
    button.layer.cornerRadius = 3.0
    return button
  }
  
  func makeButtonCoverView(color: UIColor) -> UIView {
    let buttonCoverView = UIView()
    buttonCoverView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    buttonCoverView.backgroundColor = color
    buttonCoverView.alpha = 0.1
    buttonCoverView.isUserInteractionEnabled = false
    return buttonCoverView
  }
  
  func makeEffectLabel(x: CGFloat, text: String) -> UILabel {
    let effectLabel = UILabel()
    effectLabel.frame = CGRect(x: x, y: 130, width: 80, height: 20)
    effectLabel.text = text
    effectLabel.font = UIFont(name: "Helvetica-Light",size: CGFloat(15))
    effectLabel.textAlignment = NSTextAlignment.center
    effectLabel.textColor = UIColor.white
    return effectLabel
  }
  
  func setEffectGroup(x: CGFloat, action: Selector, color: UIColor, text: String){
    let originalButton = makeButton(x: x, action: action)
    self.filterScrollView.addSubview(originalButton)
    let originalBtnCoverView = makeButtonCoverView(color: color)
    originalButton.addSubview(originalBtnCoverView)
    let originalLabel = makeEffectLabel(x: 17, text: text)
    filterScrollView.addSubview(originalLabel)
  }
 
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

