enum MyError :ErrorType{
    case InvalidValue
}

func doubleUp(value :Int) throws -> Int{
    if value < 0{
        throw MyError.InvalidValue
    }
    
    return value * 2
    
}

//　エラーハンドリングが必要なDoubleUp関数を利用
do{
    // 0以下だったら、エラー発生となる
    var doubleResultValue = try doubleUp(10)
    print("正常終了")
} catch MyError.InvalidValue{
    print("エラー発生")
}