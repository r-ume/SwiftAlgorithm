//
//  ViewController.swift
//  AlbumApp
//
//  Created by Ryosuke Umeki on 2018/03/18.
//  Copyright © 2018年 Ryosuke Umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        setBorderToImageView(imageView: firstImageView)
        setBorderToImageView(imageView: secondImageView)
        setBorderToImageView(imageView: thirdImageView)
        setBorderToImageView(imageView: fourthImageView)
        setBorderToImageView(imageView: fifthImageView)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setBorderToImageView(imageView: UIImageView){
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
    }
    
    
    @IBAction func tapAction(_ sender: UIButton) {
        firstImageView.image = UIImage(named: "\(arc4random() % 30 + 1).png")
        secondImageView.image = UIImage(named: "\(arc4random() % 30 + 1).png")
        thirdImageView.image = UIImage(named: "\(arc4random() % 30 + 1).png")
        fourthImageView.image = UIImage(named: "\(arc4random() % 30 + 1).png")
        fifthImageView.image = UIImage(named: "\(arc4random() % 30  + 1).png")
    }


}

