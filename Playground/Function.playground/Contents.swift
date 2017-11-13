//: swiftの関数の書き方

import UIKit

// Room #1
let length = 10
let width = 12

let area = length * width

// Room #2

let secondLength = 14
let secondWidth = 8

let secondArea = secondLength * secondWidth


//func 関数の名前(引数の名前: 型) -> 関数の型{

// }

func calculateArea(length: Int, width: Int) -> Int{
    let area = length * width
    return area
}

calculateArea(10, 4)
calculateArea(12, 15)




