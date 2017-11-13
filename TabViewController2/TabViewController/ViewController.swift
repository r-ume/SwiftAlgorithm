//
//  ViewController.swift
//  TabViewController
//
//  Created by 梅木綾佑 on 2016/08/26.
//  Copyright © 2016年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func addNotificationTapped(sender: AnyObject) {
        
        for item in self.tabBarController!.tabBar.items!{
            print(item.title)
        }
    }

    

}

