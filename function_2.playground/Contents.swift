import UIKit

var greeting = "Hello, playground"


//function parameter as optional and optional binding using if let
func new(n : String?){
    if let name = n {
        print("my name is \(name)")
    }else{
        print("it is nil")
    }
    
}
var a : String? = "shyam"

new(n: a)

var ab : Int = 11
//function parameter as optional and optional binding using guard let
func newFunc(n : String?){
   
    guard let a = n else{
        print("it is nil value")
        return
    }
    ab = 20
    print(a)
}
print(ab)



//nested function




func nestedFunc(val1 : Int ,bool : Bool) -> (Int) -> Int {

    func addOne(n : Int) -> Int {  return n + 1 }

    func subOne(n : Int) -> Int {  return n - 1 }

    return addOne
}
print(nestedFunc(val1: 20, bool: true)









