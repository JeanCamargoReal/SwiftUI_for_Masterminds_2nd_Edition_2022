import Foundation
import Combine

let myPublisher = PassthroughSubject<String, Never>()

let subscriber = myPublisher
    .filter {
        return $0.count < 5
    }
    .sink(receiveValue: { value in
        print("Value: \(value)")
    })

myPublisher.send("This")
myPublisher.send("is")
myPublisher.send("Amazing")
myPublisher.send("!")
