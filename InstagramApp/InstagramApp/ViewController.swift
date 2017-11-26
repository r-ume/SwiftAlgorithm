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
    
    let button = UIButton()
    button.frame = CGRect(x: 10, y: 10, width: 120, height: 120)
    button.setBackgroundImage(UIImage(named: "cat.png"), for: UIControlState.normal)
    button.layer.cornerRadius = 3.0
    button.clipsToBounds = true
//    button.addTarget(self, action: #selector(ViewController.tappedButton(_:)), for: .touchUpInside)
    filterScrollView.addSubview(button)

    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

