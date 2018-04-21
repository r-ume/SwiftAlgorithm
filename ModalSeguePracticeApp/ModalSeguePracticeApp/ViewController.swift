//
//  ViewController.swift
//  ModalSeguePracticeApp
//
//  Created by Ryosuke Umeki on 2018/03/24.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = self.setSelfProperties()
        self.view.addSubview(label)

        let button = self.setOpenModalButton(label: label)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setSelfProperties() -> UILabel {
        self.view.backgroundColor = UIColor(red: 0.0, green: 102.0 / 255, blue: 204.0 / 255, alpha: 1.0)
        let label = UILabel()
        label.text = "MainViewController"
        label.textColor = UIColor.white
        label.font = UIFont(name: "HiraKakuProN-W6", size: 20)
        label.sizeToFit()
        label.center = self.view.center
        return label
    }

    func setOpenModalButton(label: UILabel) -> UIButton{
        let button = UIButton()
        button.setTitle("Start Modal", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.sizeToFit()
        button.center = CGPoint(x: self.view.center.x, y: label.frame.maxY + 30)
        button.addTarget(self, action: #selector(ViewController.didTouchButton(sender:)), for: UIControlEvents.touchUpInside)
        return button
    }
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue){
        
    }
    
    @objc func didTouchButton(sender: UIButton){
        self.performSegue(withIdentifier: "ModalSegue", sender: self)
    }

}

