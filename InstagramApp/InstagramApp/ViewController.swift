//
//  ViewController.swift
//  InstagramApp
//
//  Created by umeki on 2017/11/26.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myImageView: UIImageView!
  @IBOutlet weak var filterScrollView: UIScrollView!
  
  let coverView = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    coverView.frame = CGRect(
        x:      0,
        y:      0,
        width:  self.view.frame.size.width,
        height: self.view.frame.size.height
    )
    
    filterScrollView.contentSize = CGSize(width: 950, height: 150)
    myImageView.addSubview(coverView)
    
    setEffectGroup(x: CGFloat(10), action: #selector(ViewController.tappedOriginalBtn(_:)), color: UIColor.clear, text: "Original", labelX: CGFloat(25))
    setEffectGroup(x: CGFloat(120), action: #selector(ViewController.tappedRedBtn(_:)), color: UIColor.red, text: "Red", labelX: CGFloat(135))
    setEffectGroup(x: CGFloat(230), action: #selector(ViewController.tappedGreenBtn(_:)), color: UIColor.green, text: "Green", labelX: 245)
    setEffectGroup(x: CGFloat(340), action: #selector(ViewController.tappedBlueBtn(_:)), color: UIColor.blue, text: "Blue", labelX: 355)
    setEffectGroup(x: CGFloat(450), action: #selector(ViewController.tappedYellowBtn(_:)), color: UIColor.yellow,  text: "Yellow", labelX: 465)
    setEffectGroup(x: CGFloat(560), action: #selector(ViewController.tappedPurpleBtn(_:)), color: UIColor.purple, text: "Purple", labelX: 575)
    setEffectGroup(x: CGFloat(670), action: #selector(ViewController.tappedCyanBtn(_:)), color: UIColor.cyan, text: "Cyan", labelX: 685)
    setEffectGroup(x: CGFloat(780), action: #selector(ViewController.tappedWhiteBtn(_:)), color: UIColor.white, text: "White", labelX: 795)
    
  }
  
  @objc func tappedOriginalBtn(_ sender: UIButton){
    print("OriginalButtonがタップされた。")
  }
  
  @objc func tappedRedBtn(_ sender: UIButton){
    print("RedButtonがタップされた。")
    coverView.backgroundColor = UIColor.red
    coverView.alpha = 0.1

  }
  
  @objc func tappedGreenBtn(_ sender: UIButton){
    print("GreenButtonがタップされた。")
    coverView.backgroundColor = UIColor.green
    coverView.alpha = 0.1
  }

  @objc func tappedBlueBtn(_ sender: UIButton){
    print("BlueButtonがタップされた。")
    coverView.backgroundColor = UIColor.blue
    coverView.alpha = 0.1
  }

  @objc func tappedYellowBtn(_ sender: UIButton){
    print("YellowButtonがタップされた。")
    coverView.backgroundColor = UIColor.yellow
    coverView.alpha = 0.1
  }

  @objc func tappedPurpleBtn(_ sender: UIButton){
    print("PurpleButtonがタップされた。")
    coverView.backgroundColor = UIColor.purple
    coverView.alpha = 0.1
  }

  @objc func tappedCyanBtn(_ sender: UIButton){
    print("CyanButtonがタップされた。")
    coverView.backgroundColor = UIColor.cyan
    coverView.alpha = 0.1
  }

  @objc func tappedWhiteBtn(_ sender: UIButton){
    print("WhiteButtonがタップされた。")
    coverView.backgroundColor = UIColor.white
    coverView.alpha = 0.1
  }

  
  func setEffectGroup(x: CGFloat, action: Selector, color: UIColor, text: String, labelX: CGFloat){
    let originalButton = makeButton(x: x, action: action)
    self.filterScrollView.addSubview(originalButton)
    let originalBtnCoverView = makeButtonCoverView(color: color)
    originalButton.addSubview(originalBtnCoverView)
    let originalLabel = makeEffectLabel(labelX: labelX, text: text)
    filterScrollView.addSubview(originalLabel)
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
  
  func makeEffectLabel(labelX: CGFloat, text: String) -> UILabel {
    let effectLabel = UILabel()
    effectLabel.frame = CGRect(x: labelX, y: 130, width: 80, height: 20)
    effectLabel.text = text
    effectLabel.font = UIFont(name: "Helvetica-Light", size: CGFloat(15))
    effectLabel.textAlignment = NSTextAlignment.center
    effectLabel.textColor = UIColor.white
    return effectLabel
  }
 
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

