//fallthroughを利用した例

let value = "apple"

switch value{
    case "apple":
        print("apple")
        fallthrough // 次のcase分の処理も実行する
    
    case "orange":
        print("orange")
    
    default:
        print("neither is true")
}