var num: Int?
var str: String?
var nonOptional: String

num = nil
str = nil

// Basic
var value1: String?

value1 = "こんにちは"

if let value1 = value1{
    print(value1)
}

var value2: String?

value2 = "hello"

if let _ = value2{
    print("the variable value is not optional")
}

var value3: String?

value3 = "hello world"

if let unwrappedvalue = value3{
    print(unwrappedvalue)
}

// アンラップ前とアンラップ後の変数名は同じにしたほうがいい

/* アンラップの種類
 1. Forced Unwrapping（強制的アンラップ）
 2. Optional Binding(オプショナルバインディング)
 3. Optinal Chaining(オプショナルチェイング)
 */

// 1. Forced Unwrapping
// オプショナル型を強制的にアンラップする方法

var optional: Int? = 10
//そのまま出力
print(optional)
// => (optional)10

//強制的にアンラップ("!"をつけて)で出力
print(optional!)
//　=> 10

var a: Int = 10  // 非オプショナル型
var b: Int? = 10 // オプショナル型
//a + b;
// => エラーが起きる
// 非オプショナル型とオプショナル型の計算はできない

var c: Int = 10  // 非オプショナル型
var d: Int? = 10// オプショナル型
print(c + d!) // => 20


// 2. Optional Binding
// if文などの条件式を組み合わせて使っている
//　アンラップする対象のオプショナル型の変数がnilかどうかを判定するためのもの

var language: String? = "swift"

if let unwrappedLanguage = language {
    print(unwrappedLanguage)
} else{
    print("no hobby")
}


// 3. Optional Chaining
// オプショナル型の変数につづけてプロパティを習得したり、メソッドを呼び出す場合に使用する
/* 例
    オプショナル型の変数？.プロパティ
    オプショナル型の変数？.メソッド
 */

// 変数をアンラップし、中身を取り出すことができる
//　注意点！
    //　オプショナルチェイニングは続けて所得したプロパティやメソッドの戻り値はオプショナル型になること
    //  オプショナルチェイニングを使って所得した値は、すべてオプショナル型となるので、その値を使うには再度アンラップが必要

struct Address {
    var street: String?
    var postalCode: String?
}

struct Name {
    var firstName: String?
    var lastName: String?
}

struct Info {
    var name: Name?
    var address: Address?
}

class SomeClass {
    var info: Info?
    
    init(info: Info?) {
        self.info = info
    }
}

let name = Name(firstName:"Steve", lastName:"Jobs")
let address = Address(street:"1 Infinite Loop", postalCode:nil)
var aPerson = SomeClass(info: Info(name:name, address:address))

// オプショナルチェイニングで取得したので、オプショナルが取得される
print(aPerson.info?.name?.firstName) // => Optional("Steve")

if let firstName = aPerson.info?.name?.firstName {
    print("first name is \(firstName)")
} else {
    print("No first name")
}


