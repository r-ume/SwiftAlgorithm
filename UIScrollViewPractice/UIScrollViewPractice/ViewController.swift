//
//  ViewController.swift
//  UIScrollViewPractice
//
//  Created by umeki on 2017/11/25.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
  
  @IBOutlet weak var myScrollView: UIScrollView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.myScrollView.frame.size = CGSize(width: self.view.frame.size.width, height: 280)

    self.myScrollView.contentSize = CGSize(width: 1000, height: 1000)
    
    let myImageView = UIImageView()
    myImageView.image = UIImage(named: "pug.png")
    myImageView.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
    myScrollView.addSubview(myImageView)

  }
  


}

