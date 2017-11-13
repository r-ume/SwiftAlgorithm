class NamedShape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}

class Triangle: NamedShape {
    init(sideLength: Double, name: String) {
        super.init(name: name)
        numberOfSides = 3
    }
}

let shapesArray = [Triangle(sideLength: 1.5, name: "triangle1"),
                   Triangle(sideLength: 4.2, name: "triangle2"),
                   Square(sideLength: 3.2, name: "square1"),
                   Square(sideLength: 2.7, name: "square2")]
var squares = 0
var triangles = 0
for shape in shapesArray {
//    ダウンキャスト - あるクラスをサブクラスにキャスト（型変換)すること
//    as?  -  ダウンキャストできるかわからないときに使われるs
//    as!- 強制的なダウンキャスト
    if let square = shape as? Square {
        squares += 1
    } else if let triangle = shape as? Triangle {
        triangles += 1
    }
}

print("\(squares) squares and \(triangles) triangles.")
