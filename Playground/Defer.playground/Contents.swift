import Foundation
//defer分の宣言
/*
  defer{
    メソッド終了時に行いたい処理
 }
 */

func longMethod() throws{
    
}

do{
    //　処理終了に必ず行う処理
    defer{
        print("処理終了時間: \(NSDate())")
    }
    
    print("処理開始時間: \(NSDate())")
    try longMethod()
    
} catch{
    print("エラー処理")
}