//
//  ViewController.swift
//  protocolPracticeApp
//
//  Created by umeki on 2017/12/05.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func myButton(_ sender: UIButton) {
    showModal()
  }
  
  func showModal() {
    let modalView = ModelView(frame: self.view.bounds)
    self.view.addSubview(ModelView)
  }
}

