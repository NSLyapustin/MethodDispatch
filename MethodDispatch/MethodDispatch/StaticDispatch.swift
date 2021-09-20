//
//  StaticDispatch.swift
//  MethodDispatch
//
//  Created by Никита Ляпустин on 20.09.2021.
//

import Foundation

// MARK: -

struct Foo {
    func bar() {
        print("bar")
    }
}

// MARK: -

protocol SomeProtocol {
}

extension SomeProtocol {
    func someFunc() {
        print("some func lol")
    }
}

class SomeProtocolChecker: SomeProtocol {
}

// MARK: -

final class SomeFinalClass {
    func someMethodOfFinalClass() {
        print("some method of final class")
    }
}

// MARK: -

class StaticDispatchTest {
    
    func startTest() {
        let foo = Foo()
        foo.bar() // Static dispatch

        let someProtocolChecker = SomeProtocolChecker()
        someProtocolChecker.someFunc() // Static dispatch

        let someFinalClass = SomeFinalClass()
        someFinalClass.someMethodOfFinalClass() // Static dispatch
    }

}


