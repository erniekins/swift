import UIKit

//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles
//Create a Line struct that has a "Start" and "End" property both of type Point
//In the Line struct add a function to return the Length of the created line as a Double.
//Create a Triangle Struct that contains a property called "Points" which is an array of type Point
//(Optional) Notice this optional can be quite hard! Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.
struct Point {
    var x: Int
    var y: Int
}

struct Line {
    var start = Point.self
    var end = Point.self
    func length() -> Double {
        var length = start + end
        return(length)
    }
}

struct Triangle {
   var Points = [Point.self]
}
