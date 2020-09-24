//
//  ViewController.swift
//  Momento
//
//  Created by Burak Furkan Asilturk on 24.09.2020.
//  Copyright © 2020 Burak Furkan Asilturk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let game = Game()
        let gameSystem = GameSystem()
        let title = "currentGame"

        game.fight()
        game.fight()
        game.fight()
        game.lose()

        try? gameSystem.save(game, title)

        let didLoadGame = try? gameSystem.load(title)

        print(didLoadGame)
    }



}

