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
        
        let tweetView = self.makeTweetView()
        backTweetView.addSubview(tweetView)
        
        let textField = self.makeTextField()
        tweetView.addSubview(textField)
        
        let textView = self.makeTextView()
        tweetView.addSubview(textView)
        
        let nameLabel = self.makeLabel(text: "名前", y: 5)
        tweetView.addSubview(nameLabel)

        let tweetLabel = self.makeLabel(text: "ツイート内容", y: 85)
        tweetView.addSubview(tweetLabel)
        
        let cancelBtn = makeCancelBtn(tweetView: tweetView)
        tweetView.addSubview(cancelBtn)
        
        let submitBtn = makeSubmitBtn()
        tweetView.addSubview(submitBtn)
    }

    //-------------部品の生成のための処理--------------
    func makeBackTweetView() -> UIView{
        let backTweetView = UIView()
        backTweetView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        backTweetView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        return backTweetView
    }
    
    func makeTweetView() -> UIView{
        let tweetView = UIView()
        tweetView.frame.size = CGSize(width: 300, height: 300)
        tweetView.center.x = self.view.center.x
        tweetView.center.y = 250
        tweetView.backgroundColor = UIColor.white
        tweetView.layer.shadowOpacity = 0.3
        tweetView.layer.cornerRadius = 3
        return tweetView
    }
    
    func makeTextField() -> UITextField {
        let textField = UITextField()
        textField.frame = CGRect(x:10, y: 40, width: 280, height: 40)
        textField.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        textField.borderStyle = UITextBorderStyle.roundedRect
        return textField
    }
    
    func makeTextView() -> UITextView {
        let textView = UITextView()
        textView.frame = CGRect(x: 10, y: 120, width: 280, height: 110)
        textView.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        textView.layer.cornerRadius = 8
        textView.layer.borderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0).cgColor
        textView.layer.borderWidth = 1
        return textView
    }
    
    func makeLabel(text: String, y: CGFloat) -> UILabel{
        let label = UILabel(frame: CGRect(x:10, y: y, width:280, height:40))
        label.text = text
        label.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        return label
    }
    
    func makeCancelBtn(tweetView: UIView) -> UIButton {
        let cancelBtn = UIButton()
        cancelBtn.frame.size = CGSize(width: 20, height: 20)
        cancelBtn.center.x = tweetView.frame.width - 15
        cancelBtn.center.y = 15
        cancelBtn.setBackgroundImage(UIImage(named: "cancel.png"), for: .normal)
        cancelBtn.backgroundColor = UIColor(red: 0.14, green: 0.3, blue: 0.68, alpha: 1.0)
        cancelBtn.layer.cornerRadius = cancelBtn.frame.width / 2
        return cancelBtn
    }
    
    func makeSubmitBtn() -> UIButton {
        let submitBtn = UIButton()
        submitBtn.frame = CGRect(x: 10, y: 250, width: 280,height: 40)
        submitBtn.setTitle("送信", for: .normal)
        submitBtn.titleLabel?.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        submitBtn.backgroundColor = UIColor(red: 0.14, green: 0.3, blue: 0.68, alpha: 1.0)
        submitBtn.setTitleColor(UIColor.gray, for: UIControlState.highlighted)
        submitBtn.layer.cornerRadius = 7
        return submitBtn
    }
}

