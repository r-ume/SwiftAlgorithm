class Introduction{
  var name:String!
  var age:Int!
  var born:Int!
  var hometown:String!
  
  init() {
    print("こんにちは")
  }
  
  class func startIntroduction() {
    print("これから自己紹介をはじめます")
  }
  
  func temp(){
    print("========================")
    print("私の名前は\(self.name)です")
    print("\(self.born)年生まれの\(self.age)歳です")
    print("出身地は\(self.hometown)です")
    print("=========================")
    print("よろしくお願いします！")
  }
  
}

class Introduction2: Introduction{
  override func temp(){
    print("クラスを継承することができた")
  }
}

var intro = Introduction2()

print(intro.temp())
