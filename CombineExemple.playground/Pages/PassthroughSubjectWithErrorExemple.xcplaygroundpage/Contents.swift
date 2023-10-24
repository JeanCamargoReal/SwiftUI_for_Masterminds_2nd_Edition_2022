import Foundation
import Combine

enum MyErrors: Error {
    case wrongValue
}

let myPublisher = PassthroughSubject<String, MyErrors>()

let subscriber = myPublisher
    .filter {
        return $0.count < 5
    }
    .sink { completion in
        if completion == .failure(.wrongValue) {
            print("Publisher failed")
        }
    } receiveValue: { value in
        print("Value \(value)")
    }

myPublisher.send("Car")
myPublisher.send(completion: .failure(.wrongValue))
