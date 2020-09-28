//
//  Prototype.swift
//  Prototype
//
//  Created by Burak Furkan Asilturk on 28.09.2020.
//

import UIKit

class Car {
    var power: Int
    var color: UIColor?

    init(power: Int, color: UIColor? = .red) {
        self.power = power
        self.color = color
    }
}

class Person {
    var id: Int
    var name: String
    var car: Car

    init(id: Int, name: String, car: Car) {
        self.id = id
        self.name = name
        self.car = car
    }
}

extension Person: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        // shallow copy
        return Person(id: id, name: name, car: car)

        // deep copy
        return Person(id: id, name: name, car: car.copy() as! Car)
    }
}

extension Car: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return Car(power: power) as! Car
    }
}

extension Person: CustomStringConvertible {
    var description: String {
        "personId: \(id), name: \(name), car: \(car.description)"
    }
}

extension Car: CustomStringConvertible {
    var description: String {
        "horse power: \(power)"
    }
}

