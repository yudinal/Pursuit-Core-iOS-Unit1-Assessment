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
    
    
    //    The Game object has the following methods:
    //    newGame() resets the game
    
    func newGame() {
        player.score = 0
        hasMoreCards == false
        deck.removeAll()
        Card.newDeck(aceValue: 1)
    }
    
    //    stopHits() called if the user wishes to pass their turn. In that case the computer draws a random number and a winner is chosen between the computer's score and the player's score.
    func stopHits(hitPlayers: Bool) -> Int {
        if hitPlayers == false {
            print(randomComputerScore)
            game.computerVsPlayer(randomScore: 0)
        }
        return randomComputerScore
    }
    
    //    hitMe() called as the user requests more cards from the deck
    
    func hitMe() -> Card? {
        if hitPlayers == true {
            deck = deck.shuffled()
        }
        let card = deck.popLast()
        player.score += card?.value ?? 0
        print(player.score)
        return card
    }
    
    //    computerVsPlayer() draws a random number for the computer and determines the winner of the game.
    
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
        //need to update the score
        //            Player.cardsArray.append(FaceCard)
        //            var newScore = player.score + Card.value
        //            player.score = newScore
        //        }
        // var playersCard = card.value
        var newScore = score.score + card.value
        
        switch newScore {
        case (21):
            print("BlackJack")
        case (22...30):
            print("Bust")
        default:
            print("Continue")
        }
        return newScore
    }
    
    
}
