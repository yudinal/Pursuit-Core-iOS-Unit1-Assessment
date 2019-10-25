//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation
print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")


// 1
let game = Game(player: Player(score: 0, playerName: "Player"))

// 2
game.newGame()

// 3
var gameOver = true

// 4
repeat {
    print("Type <<hit>> to get your first card")
    let hitOrPass = readLine()?.lowercased() ?? ""
    if hitOrPass == "hit" {
        let _ = game.hitMe()
    } else if hitOrPass == "pass" {
        game.stopHits(hitPlayers: false)
        let winStatus = game.computerVsPlayer(randomScore: 0)
        print(winStatus)
    }
} while gameOver



