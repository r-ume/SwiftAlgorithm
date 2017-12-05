//
//  ViewController.swift
//  WkWebViewPractice
//
//  Created by umeki on 2017/12/01.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController, WKNavigationDelegate {
  
  let myWkWebView = WKWebView()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    myWkWebView.navigationDelegate = self

    view.addSubview(myWkWebView)
    myWkWebView.frame = CGRect(x: 0, y: 64, width: self.view.frame.width, height: self.view.frame.height - (64 + 44))
    
    let myURL = URL(string: "http://wired.jp/")
    let myURLRequest = URLRequest(url: myURL!)
    myWkWebView.load(myURLRequest)
  

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //Webページの読み込みが開始したタイミングで、インジケータを表示
  func webView(webView: WKWebView, didStartProvisionalNavigation : WKNavigation!) {
    UIApplication.shared.isNetworkActivityIndicatorVisible = true
  }
  
  //Webページの読み込みが完了したタイミングで、インジケータを非表示
  func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
    UIApplication.shared.isNetworkActivityIndicatorVisible = false
  }
  
  @IBAction func tapBackButton(_ sender: UIButton) {
    myWkWebView.goBack()
  }
  
  @IBAction func tapNextButton(_ sender: UIButton) {
    myWkWebView.goForward()
  }
  
  @IBAction func tapReloadButton(_ sender: UIButton) {
    myWkWebView.reload()
  }
  
  @IBAction func tapStopButton(_ sender: UIButton) {
    myWkWebView.stopLoading()
  }
  
  @IBAction func openActionSheet(_ sender: UIButton) {
  }
  
  
  
}

