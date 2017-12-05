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
    
    myTableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  //  行数
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  //セクションの数
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
  
  //セルの内容
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "myCell")
    cell.textLabel?.text = "Section：\(indexPath.section)"
    cell.detailTextLabel?.text = "Row：\(indexPath.row)"
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

