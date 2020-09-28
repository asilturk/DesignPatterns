//
//  ViewController.swift
//  Prototype
//
//  Created by Burak Furkan Asilturk on 28.09.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let car = Car(power: 99)
        let burak = Person(id: 0, name: "Burak", car: car)

        let furkan = burak.copy() as! Person
        furkan.name = "Furkan"
        furkan.id = 1
        furkan.car.power = 101

        print("person1: \(burak.description)")
        print("person2: \(furkan.description)")
    }


}

