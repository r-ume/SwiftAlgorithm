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
  
  let dog = 0
  let cat = 1
  let dogImageArray = ["Pug", "Chihuahua","Miniature Dachshund", "Maltese", "Corgi"]
  let catImageArray = ["American Shorthair", "Munchkin", "Persian", "Russian Blue", "Mikeneko"]
  let sectionTitle  = ["Dog", "Cat"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myTableView.delegate = self
    myTableView.dataSource = self
    
    myTableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  //  行数
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return section == 0 ? dogImageArray.count : catImageArray.count
  }
  
  //セクションの数
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
  
  //セルの内容
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "myCell")
    cell.textLabel?.text = sectionTitle[indexPath.section]
    cell.detailTextLabel?.text = indexPath.section == dog ? "This dog is a \(dogImageArray[indexPath.row])" : "This cat is a \(catImageArray[indexPath.row])"
    cell.imageView?.image = indexPath.section == dog ? UIImage(named: "\(dogImageArray[indexPath.row])") : UIImage(named: "\(catImageArray[indexPath.row])")
    return cell
  }
  
  //セルの高さ
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return CGFloat(60)
  }
  
  //セクションのタイトル
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Section:\(section)"
  }
  
  //セクションのタイトルの高さ
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return CGFloat(44)
  }
}

