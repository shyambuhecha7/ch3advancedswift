import UIKit

var greeting = "Struct and Class, playground"

/*
 Struct  :struct is used to store variables of different data types.
 Class : A class is considered as a blueprint of objects.
 
 */

//empty
struct swiftStruct {
    
}

class swiftClass {
    
}

//struct
struct Values{
    var a = 10
    var b = 0
}

//class
class Sample{
    
    var val1 = 10
    var str = "Hello"
    var name : String?
    var callStruct = Values()
}

//creating instance of the class

var someValue = Values()
let someSample = Sample()

print(type(of: someValue))

//access struct value
someValue.a = 10
print(Values())

print(someSample.callStruct.a)

