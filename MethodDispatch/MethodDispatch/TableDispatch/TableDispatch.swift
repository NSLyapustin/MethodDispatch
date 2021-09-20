//
//  TableDispatch.swift
//  MethodDispatch
//
//  Created by Никита Ляпустин on 20.09.2021.
//

import Foundation

// MARK: -

class A {
    func printSomething() {
        print("Sth")
    }
}

class B: A {
    override func printSomething() {
        print("Something from b")
    }
}

// MARK: -

protocol SomeTableDispatchProtocol {
    func someTableDispatchFunc()
}

class SomeTableDispatchClass: SomeTableDispatchProtocol {
    func someTableDispatchFunc() {
        print("Some table dispatch func lol")
    }
}

// MARK: -

class SomeNSObjectChild: NSObject {
    func someNotDynamicMethod() {
        print("some not dynamic method")
    }
}

// MARK: - Main class

class TableDispatchTest {
    func startTest() {
        let b = B()
        b.printSomething() // Virtual dispatch

        let someTableDispatchClass = SomeTableDispatchClass()
        someTableDispatchClass.someTableDispatchFunc() // Witness dispatch

        let someNSObjectChild = SomeNSObjectChild()
        someNSObjectChild.someNotDynamicMethod() // Virtual dispatch
    }
}
