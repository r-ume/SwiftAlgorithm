//
//  ModalView.swift
//  protocolApp
//
//  Created by Ryosuke Umeki on 2018/03/24.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class ModalView: UIView, UITextFieldDelegate {
    
    let textField = UITextField()
    
    required init(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented.")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)

        let backgroundView = UIView(frame: bounds)
        backgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        
        let modal = UIView(frame: CGRect(x: (frame.width - 300) / 2, y: 100, width: 300, height: 200))
        modal.backgroundColor = UIColor.white
        textField.frame.origin = CGPoint(x: 10, y: 10)
        textField.frame.size = CGSize(width: 280, height: 40)
        textField.backgroundColor = UIColor(red: 203/255, green: 73/255, blue: 62/255, alpha: 0.8)
        textField.delegate = self
        
        let button = UIButton(frame: CGRect(x: 0, y: modal.frame.height - 50, width: 80, height: 40))
        button.setTitle("Close", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        button.addTarget(self, action: #selector(self.close(_:)), for: .touchUpInside)
        
        self.addSubview(backgroundView)
        self.addSubview(modal)
        
        modal.addSubview(textField)
        modal.addSubview(button)
        
    }
    
    @objc func close(_ sender: UIButton){
        self.removeFromSuperview()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        print("called delegate method")
        textField.resignFirstResponder()
        return true
    }

}
