import UIKit

struct Point {
    var x: Double?
    var y: Double?
}

struct Line {
    var start = Point()
    var end = Point()
    func length(){
        Double(end.x)
    }
}
//
struct Triangle {
    var points: [Point]
//    func
}

let point = Point(x: 2, y: 2)
let point2 = Point(x: 4, y: 4)

let line1 = Line(start: point, end: point2)
print(line1)
