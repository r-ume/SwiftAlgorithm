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
  
    let url = URL(string: "https://mini-mal.tokyo/about/")
    let myURLRequest = URLRequest(url: url!)
    myWebView.loadRequest(myURLRequest)
    
    myWebView.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func webViewDidStartLoad(_ webView: UIWebView) {
    UIApplication.shared.isNetworkActivityIndicatorVisible = true
  }
  
  func webViewDidFinishLoad(_ webView: UIWebView) {
    UIApplication.shared.isNetworkActivityIndicatorVisible = false
  }
  
  @IBAction func backButton(_ sender: UIButton) {
    myWebView.goBack()
  }
  
  @IBAction func nextButton(_ sender: UIButton) {
    myWebView.goForward()
  }
  
  @IBAction func reloadButton(_ sender: UIButton) {
   myWebView.reload()
  }
  
  @IBAction func stopLoadingButton(_ sender: UIButton) {
    myWebView.stopLoading()
  }
  
}
