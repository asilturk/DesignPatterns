//
//  ViewController.swift
//  Singleton
//
//  Created by Burak Furkan Asilturk on 28.09.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let count = 1000

        for index in 0..<count {
            AppSettings.shared.set(value: index, key: String(index))
            print("serial: \(index)")
        }

        // called at the same time

        DispatchQueue.concurrentPerform(iterations: count) { (index) in
            AppSettings.shared.set(value: index, key: String(index))
            print("index: \(index)")
        }

        DispatchQueue.concurrentPerform(iterations: count) { (index) in
            if let value = AppSettings.shared.get(forKey: String(index)) as? Int {
                print("value: \(value)")
            }
        }

    }

}

