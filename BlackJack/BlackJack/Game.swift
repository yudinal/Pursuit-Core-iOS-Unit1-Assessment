//
//  Game.swift
//  BlackJack
//
//  Created by Lilia Yudina on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    var deck = Card.newDeck(aceValue: 1)
    var player: Player
    init(player: Player) {
        self.player = player
    }
    var hitPlayers: Bool {
        return true
    }
    var hasMoreCards: Bool {
        return !deck.isEmpty
    }
    var randomComputerScore = Int.random(in: 2...30)
    //var randomComputerScore = SystemRandomNumberGenerator()
    
    func newGame() {
        player.score = 0
        deck = Card.newDeck(aceValue: 1)
    }
    
    func stopHits(hitPlayers: Bool) -> Int {
        if hitPlayers == false {
            print(randomComputerScore)
            game.computerVsPlayer(randomScore: 0)
        }
        return randomComputerScore
    }
    
    func hitMe() -> Card? {
        if hitPlayers == true {
            deck = deck.shuffled()
        }
        guard let card = deck.popLast() else {
          return nil
        }
        player.cardsArray.append(card)
        player.score += card.value
        print("cards: \(player.cardsArray.map{ $0.stringify() }) score: \(player.score)")
        return card
    }
    
    func computerVsPlayer(randomScore: Int?) -> String {
        var randomScore = randomComputerScore
        
        if randomComputerScore > player.score && randomComputerScore < 22 {
            return "You lose! Would you like to play again?"
        } else {
            return "You Win!!"
        }
    }
    
    //    gameStatus() takes in the player's card and determines the current score. Here the player score options can be, BlackJack, Bust or Continue playing as their status is still valid for game play.
    func gameStatus(card: Card, score: Player) -> Int {
                var newScore = score.score + card.value
       // var status: String
        switch newScore {
        case (21):
            print("BlackJack")
        case (22...30):
            print("Bust")
        default:
            print("Continue")
             game.hitMe()
        }
        return newScore
    }
    
    
}
