//
//  ModalViewController.swift
//  ModalSeguePracticeApp
//
//  Created by Ryosuke Umeki on 2018/03/24.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = self.makeLabel()
        self.view.addSubview(label)

        let button = self.makeOpenModalButton(label: label)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeLabel() -> UILabel{
        self.view.backgroundColor = UIColor(red: 1.0, green: 153.0 / 255, blue: 0.0, alpha: 1.0)
        let label = UILabel()
        label.text = "ModalViewController"
        label.textColor = UIColor.white
        label.font = UIFont(name: "HiraKakuProN-W6", size: 20)
        label.sizeToFit()
        label.center = self.view.center
        return label
    }
    
    func makeOpenModalButton(label: UILabel) -> UIButton{
        let button = UIButton()
        button.setTitle("Hide Modal", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.sizeToFit()
        button.center = CGPoint(x: self.view.center.x, y: label.frame.maxY + 30)
        button.addTarget(self, action: #selector(ModalViewController.didTouchButton(sender:)), for: UIControlEvents.touchUpInside)
        return button
    }
    
    @objc func didTouchButton(sender: UIButton){
        self.dismiss(animated: true, completion: { () -> Void in } )
    }

}

