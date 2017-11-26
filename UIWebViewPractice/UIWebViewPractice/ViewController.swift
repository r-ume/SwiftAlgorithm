//
//  ViewController.swift
//  UIWebViewPractice
//
//  Created by umeki on 2017/11/26.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
  @IBOutlet weak var myWebView: UIWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.myWebView.frame.size.height = self.view.frame.size.height
    
    self.myWebView.frame.size.width = self.view.frame.size.width
    
    let url = URL(string: "https://mini-mal.tokyo/about/")
    let myURLRequest = URLRequest(url: url!)
    myWebView.loadRequest(myURLRequest)
    
    myWebView.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}
