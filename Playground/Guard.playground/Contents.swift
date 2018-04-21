
// guard statement

/*
 処理を実行する前に、利用する変数に適切な値が入っているかどうかのチェックをするときは、通常if文を活用することが多い。
 しかし、swiftでは、変数のチェックのための専用構文であるguard文が用意されている
 */

func guardPractice(){
    let a: Any = 1
    guard let int = a as? Int else {
        print("a is not integer")
        return
    }
    
    print("value is \(int).")
}

guardPractice()
