import Foundation
import Combine

let myPublisher = Just("55")
    .map { value in
        return Int(value) ?? 0
    }
    .sink { value in
        print("Value \(value * 100)")
    }
