import UIKit

var str = "Hello, playground"
var myArr = ["first", "Second", "Third", 5, [1,2]] as [Any]
print(myArr[4])
// as --> casting
myArr.count
var res = myArr[0] as! String
res.uppercased()
myArr.first
myArr.last

// sets
var ss: Set = [1,2,3,4,5]
var ss2: Set = [1,2,3,7,9]
var ress = ss.union(ss2)

// dictionary

