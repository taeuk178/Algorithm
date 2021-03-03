import UIKit

struct Point{
    var x = 0.0
    var y = 0.0
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}
