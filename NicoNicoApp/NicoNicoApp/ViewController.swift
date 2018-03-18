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
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        commentTextField.resignFirstResponder()
        return true
    }
    
}

