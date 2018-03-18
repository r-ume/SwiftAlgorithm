//
//  ViewController.swift
//  NicoNicoApp
//
//  Created by Ryosuke Umeki on 2018/03/18.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var commentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        commentTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapSubmitButton(_ sender: UIButton) {
        commentTextField.resignFirstResponder()
        let commentLabel = makeCommentLabel()
        self.view.addSubview(commentLabel)
        Timer.scheduledTimer(
            timeInterval: 0.1,
            target: self,
            selector: #selector(self.moveComment(_:)),
            userInfo: commentLabel,
            repeats: true
        )
    }
    
    @objc func moveComment(_ sender: Timer) {
        let commentLabel = sender.userInfo as! UILabel
        commentLabel.frame.origin.x -= commentLabel.frame.height
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        commentTextField.resignFirstResponder()
        return true
    }
    
    func makeCommentLabel() -> UILabel{
        let label = UILabel()
        label.text = commentTextField.text
        let randY = CGFloat(arc4random() % UInt32(self.view.frame.height - 64) + 64)
        label.frame.origin = CGPoint(x: self.view.frame.width, y: randY)
        label.font = UIFont(name: "HiraginoSans-W6", size: CGFloat(arc4random() % 21 + 20))
        label.sizeToFit()
        return label
    }
    
}

