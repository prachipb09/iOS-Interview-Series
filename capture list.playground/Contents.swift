import Foundation
//capture list

//value type
var a = 10
a = 20
var clousure = { [a] (val: Int) in
    print("val = \(val)")
    print("a = \(a)")
}

a = 99

//reference type

class Test {
    var unit: Int = 89
}
var obj = Test()
var closureForClass = { [obj, a] (value: Int) in
    print(obj.unit)
    print("value = \(value)")
    print("a=\(a)")
}
obj.unit = 1
clousure(100)
closureForClass(999)
