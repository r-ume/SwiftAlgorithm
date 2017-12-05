//
//  ViewController.swift
//  WkWebViewPractice
//
//  Created by umeki on 2017/12/01.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit
import WebKit
import Social

class ViewController: UIViewController, WKNavigationDelegate {
  @IBOutlet weak var titleLabel: UILabel!
  
  let myWkWebView = WKWebView()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    myWkWebView.navigationDelegate = self

    view.addSubview(myWkWebView)
    myWkWebView.frame = CGRect(x: 0, y: 64, width: self.view.frame.width, height: self.view.frame.height - (64 + 44))

    let myURL = URL(string: "https://github.com/")
    let myURLRequest = URLRequest(url: myURL!)
    myWkWebView.load(myURLRequest)
    
    myWkWebView.addObserver(self, forKeyPath: "title", options: .new, context: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutableRawPointer) {
    //ヘッダーのLabelにWebページの記事のタイトルを表示
    titleLabel.text = myWkWebView.title
  }
  
  //Webページの読み込みが開始したタイミングで、インジケータを表示
  func webView(_: WKWebView, didStartProvisionalNavigation: WKNavigation!) {
    UIApplication.shared.isNetworkActivityIndicatorVisible = true
  }
  
  //Webページの読み込みが完了したタイミングで、インジケータを非表示
  func webView(_: WKWebView, didFinish navigation: WKNavigation!) {
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
    let alertController = UIAlertController(title: "アクションシート", message: "アクションシートです。", preferredStyle: .actionSheet)
    
    let safariAction = UIAlertAction(title: "Safariで開く", style: .default, handler: {
      (action: UIAlertAction!) -> Void in
      self.openSafari()
    })
    
    let facebookAction = UIAlertAction(title: "Facebook", style: .default, handler: {
      (action: UIAlertAction!) -> Void in
      self.facebookShare()
    })
    
    //アクションシートにアクションの追加
    alertController.addAction(safariAction)
    alertController.addAction(facebookAction)

    //アクションシートの表示
    self.present(alertController, animated: true, completion: nil)
    
  }
  
  func openSafari(){
    UIApplication.shared.openURL(myWkWebView.url!)
  }
  
  func facebookShare(){
    let facebookVC = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
    facebookVC?.add(myWkWebView.url)
    facebookVC?.setInitialText("#TECH::CAMP")
    self.present((facebookVC)!, animated: true, completion: nil)
  }
  
  deinit {
    //監視解除
    myWkWebView.removeObserver(self, forKeyPath: "title")
  }
  

  
  
}

