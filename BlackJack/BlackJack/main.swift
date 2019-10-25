//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation
print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")


let game = Game(player: Player(score: 0, playerName: "Player"))
//game.newGame()
var gameOver = true
var score = 0
repeat {
    let hitOrPass = readLine() ?? ""

    if hitOrPass == "hit" {
        let _ = game.hitMe()
        //score += card?.value ?? 0
        //print(score)
        
    } else if hitOrPass == "pass" {
        game.stopHits(hitPlayers: false)
        let winStatus = game.computerVsPlayer(randomScore: 0)
        
        print(winStatus)
        //print("pass")
        //print(Card.value)
    }
    
//    repeat {
//        guard let decision = game.hitMe() else {
//            game.stopHits(hitPlayers: false)
//            break
//        }
//    } while game.hasMoreCards
//    game.gameStatus(card: Card(suit: Suit(rawValue: "♥️") ?? Suit(rawValue: "♠️")!, value: 3, isFaceCard: true, face: FaceCard(rawValue: "🙂")), score: Player(score: 0, playerName: "Player"))
//    game.newGame()
//    print("Would you like to continue playing another round?")
//     if continuePlaying == "yes" {
//         game.newGame()
//         gameOver = true
//     } else {
//         gameOver = false
//     }
} while gameOver



