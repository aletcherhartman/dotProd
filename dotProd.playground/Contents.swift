//: Playground - noun: a place where people can play

import UIKit


class Vector {
    var i, j, k : Int
    
    init(i:Int, j:Int, k:Int){
        self.i = i
        self.j = j
        self.k = k
    }
    
    //this works
    func dotProd(Vector: Vector ) -> Int{
        return (self.i * Vector.i ) + (self.j * Vector.j) + (self.k * Vector.k)
    }
    //
    
    func dotAngle(Vector: Vector ) -> Int{
        var length1 = sqrt(pow(Double(self.i),2.0) + pow(Double(self.j),2.0) + pow(Double(self.k),2.0))
        var length2 = sqrt(pow(Double(Vector.i),2.0) + pow(Double(Vector.j),2.0) + pow(Double(Vector.k),2.0))
        length1.round()
        length2.round()
        var angle = acos(Double(self.dotProd(Vector: Vector))/(length1*length2))
        angle.round()
        return Int(angle)
    }
    
    func dotPerp(Vector: Vector  ) -> String{
        if self.dotAngle(Vector: Vector) < 0 {
            return " The angle between the vectors is acute. "
        } else if self.dotAngle(Vector: Vector) == 0 {
            return " The vectors are perpendicular. "
        }else{
          return " The angle between the vectors is obtuse. "
        }
        
    }
    
    //this works
    func crosProd(Vector: Vector ) -> Int {
        return ((self.k * Vector.j ) + (self.j * Vector.k)) - ((self.k * Vector.i ) + (self.i * Vector.k)) + ((self.j * Vector.i ) + (self.i * Vector.j))
    }
    
    func ariaXProd(Vector: Vector ) -> Int {
        return abs(((self.k * Vector.j ) + (self.j * Vector.k)) - ((self.k * Vector.i ) + (self.i * Vector.k)) + ((self.j * Vector.i ) + (self.i * Vector.j)))
    }
 
}
var vector1 = Vector(i: -5, j: 1, k: 2)
var vector2 = Vector(i: 3, j: 6, k: -1)
print(vector1.dotProd(Vector: vector2))
print(vector1.dotAngle(Vector: vector2))
print(vector1.dotPerp(Vector: vector2))
print(vector1.crosProd(Vector: vector2))
print(vector1.ariaXProd(Vector: vector2))
