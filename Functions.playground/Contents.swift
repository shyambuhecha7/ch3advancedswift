import UIKit

var greeting = "Hello, Functions playground"

//diclaration - function name,para and return

//empty function
func hello(){}
hello()

//defination and calling functions
func sum(n1 : Int, n2 : Int)-> Int {
    return n1 + n2
}

sum(n1 : 10, n2 : 20)

//return parameter and return value

//Functions Without Parameters
func withoutPara()-> String{
    return "Fuction without parameter"
}
var str = withoutPara()

print(str)

//Functions With Multiple Parameters
func fullName(name : String, surname : String) -> String {
   let str = name + " " + surname
    return str
}

print(fullName(name: "Shyam", surname: "Buhecha"))


//Functions Without Return Values
func noReturnVal(value : String){
    print(value)
}

noReturnVal(value: "hello simform")

//Functions with Multiple Return Values
func minMax(arr : [Int]) -> (Int,Int){
    let min : Int? = arr.min()
    let max : Int? = arr.max()
    
    return (min ?? 0,max ?? 0)
}

var ans = minMax(arr: [1,2,3,4,5,6,7,8])
print("min : \(ans.0) max : \(ans.1)")

//Optional Tuple Return Types

func student(name : String) -> (String,Int)? {
    if(name == "shyam"){
        return (name,95)
    }else{
        return nil
    }
}

print(student(name: "a"))

//Functions With an Implicit Return - function implicitly return a value

func wishes(msg : String) -> String{
  
  "good " + msg
}

print(wishes(msg: "morning"))

//Function Argument Labels and Parameter Names 
