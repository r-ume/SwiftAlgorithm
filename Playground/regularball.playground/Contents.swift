//Regular Ball Super Ball
//Create a class Ball.
//
//Ball objects should accept one argument for "ball type" when instantiated.
//
//If no arguments are given, ball objects should instantiate with a "ball type" of "regular."


class Ball {
  
  let type: String
  
  init(type: String = "regular"){
    self.type = type
  }
  
  func ballType() -> String{
    return type
  }
}

var ball: Ball = Ball(type: "")
var ball2: Ball = Ball(type: "adfad")


print(ball.ballType())    //=> "regular"
print(ball2.ballType())    //=> "super"


