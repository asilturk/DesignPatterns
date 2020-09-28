//
//  Game.swift
//  Momento
//
//  Created by Burak Furkan Asilturk on 24.09.2020.
//  Copyright © 2020 Burak Furkan Asilturk. All rights reserved.
//

import Foundation

public class Game: Codable {

    public class State: Codable {
        public var attemptsRemaining = 3
        public var level = 1
        public var score = 0
    }

    public var state = State()

    public func fight() {
        state.score += 100
    }

    public func lose() {
        state.attemptsRemaining -= 1
    }
}
