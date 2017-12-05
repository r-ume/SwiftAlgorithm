//
//  ModelView.swift
//  protocolPracticeApp
//
//  Created by umeki on 2017/12/05.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit

@objc protocol ModalViewDelegate{
  func modalView(text: String)
}

class ModalView: UIView, UITextFieldDelegate {
  
  let textField = UITextField()
  weak var customDelegate: ModalViewDelegate?
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override init(frame: CGRect){
    super.init(frame: frame)
    
    //Modalを表示した時に表示するグレーの背景の描画
    let backgroundView = UIView(frame: bounds)
    backgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
    //Modalの描画
    let modal = UIView(frame: CGRect(x: (frame.width - 300) / 2, y: 100, width: 300, height: 200))
    modal.backgroundColor = UIColor.white
    textField.frame.origin = CGPoint(x: 10, y: 10)
    textField.frame.size = CGSize(width: 280, height: 40)
    textField.backgroundColor = UIColor(red: 203/255, green: 73/255, blue: 62/255, alpha: 0.8)
    textField.delegate = self
    
    //modalの上に表示するボタンの描画
    let button = UIButton(frame: CGRect(x: 0, y: modal.frame.height - 50, width: 80, height: 40))
    button.setTitle("Close", for: .normal)
    button.setTitleColor(UIColor.blue, for: .normal)
    
    //ボタンがタップされた時にcloseメソッドを呼ぶ
    button.addTarget(self, action: #selector(self.close(_:)), for: .touchUpInside)
    
    //ViewControllerの上にグレーの背景を表示
    self.addSubview(backgroundView)
    
    //グレーの背景の上にModalを表示
    self.addSubview(modal)
    
    //Modalの上にtextFieldを表示
    modal.addSubview(textField)
    
    //Modalの上にボタンを表示
    modal.addSubview(button)
  }
  
  @objc func close(_ sender: UIButton) {
    customDelegate?.modalView(text: textField.text!)
    self.removeFromSuperview()
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    // キーボードを消す
    print("called delegate method")
    textField.resignFirstResponder()
    return true
  }
  
}
