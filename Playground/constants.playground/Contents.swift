//: Playground - noun: a place where people can play

import UIKit

let ConstantA = "A"
private let ConstantB = "B"

class SomeClass: NSObject {

  // クラス変数
  static let ConstantC = "C"
  private static let ConstantD = "D"
  
  // インスタンス変数
  let ConstantE = "E"
  private let ConstantF = "F"
  
  // クラスメソッド
  class func classMethod() {
    print("A=\(ConstantA)")
    print("B=\(ConstantB)")
    print("C=\(ConstantC)")
    print("D=\(ConstantD)")
//    print("E=\(ConstantE)") // コンパイルエラー
//    print("F=\(ConstantF)") // コンパイルエラー
  }
  
  // インスタンスメソッド
  func instanceMethod() {
    print("A=\(ConstantA)")
    print("B=\(ConstantB)")
//    print("C=\(ConstantC)") // コンパイルエラー
//    print("D=\(ConstantD)") // コンパイルエラー
    print("E=\(ConstantE)")
    print("F=\(ConstantF)")
  }
  
}


