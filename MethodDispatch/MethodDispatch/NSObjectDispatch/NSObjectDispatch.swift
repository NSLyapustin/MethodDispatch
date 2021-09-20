//
//  NSObjectDispatch.swift
//  MethodDispatch
//
//  Created by Никита Ляпустин on 20.09.2021.
//

import Foundation

// MARK: -

class SomeNSObjectClass: NSObject {
    
    func firstFunc() {
        print("firstFunc")
    }
    
    dynamic func secondFunc() {
        print("secondFunc")
    }
}

extension SomeNSObjectClass {
    func thirdFunc() {
        print("thirdFunc")
    }
}

class NSObjectDispatchTest {
    
    func startTest() {
        let someNSObjectClass = SomeNSObjectClass()
        someNSObjectClass.firstFunc() // Virtual
        someNSObjectClass.secondFunc() // Message
        someNSObjectClass.thirdFunc() // Static
    }
}
