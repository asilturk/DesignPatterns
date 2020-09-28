//
//  GameSystem.swift
//  Momento
//
//  Created by Burak Furkan Asilturk on 24.09.2020.
//  Copyright © 2020 Burak Furkan Asilturk. All rights reserved.
//

import UIKit

private typealias GameMomento = Data

public class GameSystem {
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    private let userDefaults = UserDefaults.standard

    public func save(_ game: Game, _ title: String) throws  {
        let data = try encoder.encode(game)
        userDefaults.set(data, forKey: title)
    }

    public func load(_ title: String) throws -> Game? {
        guard let data = userDefaults.value(forKey: title) as? GameMomento else {
            return nil
        }

        guard let game = try? decoder.decode(Game.self, from: data) else {
            throw GameMomentoError.notFound
        }

        return game
    }

    public enum GameMomentoError: String, Swift.Error {
        case notFound
    }

}
