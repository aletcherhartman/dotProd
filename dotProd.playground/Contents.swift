//: Playground - noun: a place where people can play

import UIKit


class VectorDot {
    var i1 = 1
    var i2 = 1
    var j1 = 1
    var j2 = 1
    var k1 = 1
    var k2 = 1
    
    func dotProd(I1 : Int, I2 : Int, J1 : Int, J2 : Int, K1 : Int, K2 : Int ) -> Int{
        return (i1 * i2) + (j1 * j2) + (k1 * k2)
    }
    
    func dotAngle(I1 : Int, I2 : Int, J1 : Int, J2 : Int, K1 : Int, K2 : Int ) -> Double{
        var length1 = sqrt(Double(i1^2 + j1^2 + k1^2))
        var length2 = sqrt(Double(i2^2 + j2^2 + k2^2))
        return  acos(Double(VectorDot.dotProd)/(length1*length2))
    }
    
    func dotPerp(I1 : Int, I2 : Int, J1 : Int, J2 : Int, K1 : Int, K2 : Int ) -> String{
        if VectorDot.dotAngle < 0 {
            return " The angle between the vectors is acute. "
        } else if VectorDot.dotAngle = 0 {
            return " The vectors are perpendicular. "
        }else{
          return " The angle between the vectors is obtuse. "
        }
        
    }
 
}

print(VectorDot.dotProd)
print(VectorDot.dotAngle)
print(VectorDot.dotPerp)
