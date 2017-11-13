//
//  ViewController.swift
//  UIKit035
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "目.jpg"))
        imageView.frame = view.bounds
        imageView.contentMode = .ScaleToFill
        view.addSubview(imageView)
        
        let blurEffect = UIBlurEffect(style: .Dark)
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = imageView.bounds
        view.addSubview(blurredEffectView)
        
    }

}