//
//  ViewController.swift
//  MethodDispatch
//
//  Created by Никита Ляпустин on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let staticDispatchTest = StaticDispatchTest()
        staticDispatchTest.startTest()
    }
}

