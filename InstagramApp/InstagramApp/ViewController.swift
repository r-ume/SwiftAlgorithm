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
    
    let myButton = makeButton(x: CGFloat(10), action:  #selector(ViewController.tappedButton(_:)))
  
    filterScrollView.addSubview(myButton)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
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


}

