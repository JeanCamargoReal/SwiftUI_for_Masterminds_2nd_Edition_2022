import Foundation
import Combine

let myPublisher = Just("55")

let processPublisher = Publishers.Map<Just<String>, Int>(upstream: myPublisher, transform: { value in 
    return Int(value) ?? 0 })

let mySubscriber = Subscribers.Sink<Int, Never>(receiveCompletion: { completion in
    if completion == .finished {
        print("Complete")
    }
}, receiveValue: { value in
    print("Value: \(value * 100)")
})

processPublisher.subscribe(mySubscriber)
