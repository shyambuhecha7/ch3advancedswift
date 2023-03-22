import UIKit

var greeting = "Hello,Closure  playground"


//closure - A closure is a block of code that you can pass around in your code

let empty = {
    
} // () -> ()
empty()
let gm = {
    print("Good Morning! ")
    
}

gm()

//closure with parameter and return value

let birthday : (String) -> () = { name -> () in
    print("Happy Birthday \(name)")
}

birthday("To You")


//When you call a closure, you don’t include a name for any parameters it has. This is different from a function, which usually has named parameters (called argument labels).
let birthDay : (String) -> () = {
    print("happy birthday \($0)") //$0 is used to reference the value of first parameter
}

birthDay("To You")

//Swift’s Closure Types Explained
//Swift’s Closure Types Explained - 1.closure with one parameter

var hello : (String) -> () = {(name : String) -> () in //parameter is string and return a void
    print(name)
    
}
hello("Hello")

//Swift’s Closure Types Explained - 2. closure with no para and no return

/*
 Void means “nothing”. When your function returns Void, it does not return anything. Not even nil or an empty string! As described in the Apple Developer Documentation, Void is an alias of an empty tuple (). When a function or closure doesn’t return anything, its return type is Void.
 */
let auth : () -> () = { () -> () in
    print("No parameter with No Return Value")
}
auth()

var auth1 : () -> Void = { () -> Void in
    
}

auth1()
//Swift’s Closure Types Explained - 2. closure with no para and return Int
var num : () -> Int = { () -> Int in
    return 5
}

print(num())

//closure with parameter and optionals are optionals

var a = { (name1 : String?) -> String? in
    if let n = name1{
        print(n)
        return n
    }else{
        
        return nil
    }
}

var strOp : String?
print(a(strOp))



var sampleClosure = {() -> () in
    print("closure as a function parameter")
}
//closure as function parameter
func  funSample(s : () -> ()){
    
    s()
}

funSample(s: sampleClosure)

//Trailing closure - In trailing closure, if a function accepts a closure as its last parameter,
func car(strName : String,closure : () -> ()) {
    print(strName)
    closure()
}

car(strName: "it is Trailing Closure", closure: sampleClosure)

car(strName: "swift") {
    print("it is trailing closure")
    
}
//auto closure
/*
 While calling a function, we can also pass the closure without using the braces {}.
 To pass the closure argument without using braces, we must use the @autoclosure keyword in function definition.
 
 Note: We cannot pass arguments to an autoclosure. If we try to do so we'll get the error message as: argument type of @autoclosure parameter must be '()'.


 */

func display(name : @autoclosure () -> ()){
    print("display function")
    name()
}

display(name: print("this is an auto closure"))

//non asciping closure

var studentClosure = { () -> () in
    print("student")
}
func student1(name :  String ,  c : () -> ()) -> String{
   
     studentClosure()
    return name
    
}
student1(name: "xyz",c : studentClosure)

//ascaping closure
func student2(name :  String ,  c : @escaping () -> ()) -> String{
   
     studentClosure()
     return name
    
}
student2(name: "xyz",c : studentClosure)

//
