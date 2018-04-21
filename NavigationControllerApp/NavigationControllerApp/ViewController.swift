//
//  ViewController.swift
//  NavigationControllerApp
//
//  Created by Ryosuke Umeki on 2018/04/21.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tapTransitionButton(_ sender: Any) {
        self.performSegue(withIdentifier: "NextSegue", sender: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let deepGreen = UIColor(red: 72.0 / 255, green: 140.0 / 255, blue: 141.0 / 255, alpha: 1.0)
        self.navigationController!.navigationBar.barTintColor = deepGreen
        self.title = "Main View Controller"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.toNextViewController(sender:)))
    }
    
    @objc func toNextViewController(sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "NextSegue", sender: nil)
    }
    
    
}

