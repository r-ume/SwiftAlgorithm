
// guard statement

/*
 処理を実行する前に、利用する変数に適切な値が入っているかどうかのチェックをするときは、通常if文を活用することが多い。
 しかし、swiftでは、変数のチェックのための専用構文であるguard文が用意されている
 */

func buyItem(myMoney :Int?){
    
    guard let money = myMoney else{
        //処理終了
        
        return
    }
    
    // 商品を購入する処理
}
