import UIKit
// 非同期処理の実行を実現するために、XCPlayground フレームワークが必要
    // 非同期処理 -> 
        // ある関数が呼び出されたとき、戻り値として本来渡したい結果を返すのではなく、一度関数としては終了し（＝呼び出し元に戻る）、後で『本来渡したかった値』を返せる状態になったときに、呼び出し元にその値を通知する
        // translation: プログラムは上から下へ処理を進めていくのが普通だけど、処理に時間がかかる関数はそこをスキップされ、処理が完了した時に戻り値を返す

import XCPlayground

// 非同期処理の実行を許可するために、これをtrueに
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

// セッションの取り出し
//　セッション -> Webサイトが訪れたユーザーがサイト内で行う一連の行動
let session = NSURLSession.sharedSession()

let url = NSURL(string: "http://www.yahoo.co.jp")!

let request = NSURLRequest(URL: url)

let task = session.dataTaskWithRequest(request){
    (data: NSData? , response: NSURLResponse?, error: NSError?) -> Void in
    
    if let data = data{
        let value = NSString(data :data, encoding: NSUTF8StringEncoding)
        print(value)
    }
}

task.resume()

