//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by umeki on 2017/12/05.
//  Copyright © 2017年 umeki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var myTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myTableView.delegate = self
    myTableView.dataSource = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  //  行数10
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  //セルの内容
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "myCell")
    cell.textLabel?.text = "Dog"
    cell.detailTextLabel?.text = "This dog is a pug"
    cell.imageView?.image = UIImage(named: "dog.png")
    return cell
  }
  
  //セルの高さ
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return CGFloat(60)
  }
  
  //セクションのタイトル
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Animal"
  }
  
  //セクションのタイトルの高さ
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return CGFloat(44)
  }
}

