//: [Previous](@previous)

import Foundation

class Example {
    lazy var expensiveComputation: Int = {
        print("Computing...\(Thread())")
        return Int.random(in: (1..<100))
    }()
}

let example = Example()

DispatchQueue.concurrentPerform(iterations: 10) { _ in
    print(example.expensiveComputation)
}


//: [Next](@next)
