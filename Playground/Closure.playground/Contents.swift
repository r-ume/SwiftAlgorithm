// SwiftでのClosureのやり方

// 関数名 (引数の型) 返り値の型
let addFunc: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

print(addFunc(1, 5))

let numbers = [0.02, 0.4, 0.26, 0.8]

let array = numbers.map{ (num: Double) -> String in
    let percent = num * 100
    return percent.description + "%"
}
print(array)

let shortArray = numbers.map { num in (num*100).description + "%" }
print(shortArray)

let shorterArray = numbers.map{ ($0*100).description + "%" }
print(shorterArray)

var cafeMenu: Array<String>
cafeMenu = ["Coffee","cappuccino","Latte","mocca"]

let sortedCafeMenu = cafeMenu.sorted{(s1: String, s2: String) -> Bool in
    return s1.uppercased() < s2.uppercased()
}
print(sortedCafeMenu)

let shortSortedCafeMenu = cafeMenu.sorted{ (s1, s2) -> Bool in
    return s1.uppercased() < s2.uppercased()
}
print(shortSortedCafeMenu)

var menuDictionary = Dictionary<String, Int>()
menuDictionary = ["Coffee": 300, "cappuccino": 400, "Latte": 300, "mocca": 450]

let sortedMenuDictionary = menuDictionary.sorted{ (d1: (String, Int), d2: (String, Int)) -> Bool in
    return d1.0.uppercased() < d2.0.uppercased()
}
print(sortedMenuDictionary)
