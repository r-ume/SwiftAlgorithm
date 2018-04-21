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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tapTransitionButton(_ sender: Any) {
        self.performSegue(withIdentifier: "NextSegue", sender: nil)
    }
    
}

