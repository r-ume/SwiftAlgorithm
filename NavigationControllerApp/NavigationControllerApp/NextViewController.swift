//
//  NextViewController.swift
//  NavigationControllerApp
//
//  Created by Ryosuke Umeki on 2018/04/21.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let deepRed = UIColor(red: 180.0 / 255, green: 84.0 / 255, blue: 112.0 / 255, alpha: 1.0)
        self.navigationController!.navigationBar.barTintColor = deepRed
        self.title = "Next View Controller"
        
        self.navigationController!.navigationBar.titleTextAttributes =
            [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont(name: "Helvetica-Bold", size: 20)!]
        
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.isTranslucent = false
    }

}
