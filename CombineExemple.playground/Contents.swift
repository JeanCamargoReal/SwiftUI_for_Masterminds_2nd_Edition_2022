import Foundation
import Combine

let myPublisher = Just("55")

let mySubscriber = Subscribers.Sink<String, Never>(receiveCompletion: { completion in
    if completion == .finished {
        print("Complete")
    }
}, receiveValue: { value in
    print("Value: \(value)")
})

myPublisher.subscribe(mySubscriber)
