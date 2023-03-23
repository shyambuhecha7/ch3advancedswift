import UIKit

var greeting = "Enum playground"

/*
 Enumerations - Enum is a group of related value and enable you to work with those value in type safe way.
 
 values known as a raw value
 */

//
enum season : CaseIterable{
    case summer, winter, monsoon, spring
}



var currentSeason = season.summer
print(currentSeason)

switch currentSeason{
case .winter :
    print("current season is winter")
case .summer :
    print("current season is summer")
case .monsoon :
    print("current season is monsoon")
case .spring :
    print("current season is spring")


}


//enum
for i in season.allCases{
    print(i)
}

// enum with row value

enum Size : Int{
    case small = 10
    case medium = 20
    case large = 30
}
var result = Size.small.rawValue

print(result)

//swift enum associated value ( sometimes we may want to attach additional information to enum values. These additional information attached to enum values are called associated values.)
enum Leptop {
    case name(String) //associated string vlaue
    
}

var brand = Leptop.name("Hp")
print(brand)

//

enum Distance {
    case meter(Int)
    case km(Int)
}
var dist1 = Distance.meter(2000)
print(dist1)

var dist2 = Distance.km(2)
print(dist2)

//
enum Marks{
    case spi(Double,Double,Double)
    case cpi(Double,Double,Double)
}
var m1 = Marks.spi(8.3, 8.7, 9.3)
print(m1)

var m2 = Marks.cpi(8.2,8.5,8.9)
print(m2)


//Named Associated Values

enum City {
    case metrocity(name : String)
}

var cityName = City.metrocity(name: "Ahamdabad")
print(cityName)

//
/*
 Raw Values VS Associated Values :
 -raw values are predefined constant values provided to each enum value.
 
 enum Vehicle: String {

   case car = "Four Wheeler"
   case bike = "Two Wheeler"
 }
 -associated values are more like variables associated with the enum values.
 enum Marks {
   
   case grade(String)
   case gpa(Double)
 }
 
 we assign the associated value to the enum value while creating a variable.
 
 
 ///Note :
 
 An enum cannot have both raw values and associated values at the same time.
 The raw values of an enum must be of the same data type. But associated values can be of any type.
 */

