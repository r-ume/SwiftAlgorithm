//
//  ViewController.swift
//  TwitterApp
//
//  Created by Ryosuke Umeki on 2018/03/18.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //-------------TableViewの処理------------------

    
    @IBAction func tapButton(_ sender: UIButton) {
        let backTweetView = self.makeBackTweetView()
        self.view.addSubview(backTweetView)
    }
    
    //-------------部品の生成のための処理--------------
    func makeBackTweetView() -> UIView{
        let backTweetView = UIView()
        backTweetView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        backTweetView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        return backTweetView
    }
}

