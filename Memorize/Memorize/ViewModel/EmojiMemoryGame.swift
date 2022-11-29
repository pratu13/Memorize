//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Pratyush  on 6/2/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    private static let emojis: [String] = ["✈️", "🚗", "🚘","🚙","🏎","🚎","⛴","🛫","🚕","🚚","🏍","🚋","🚁","🛻", "🚲","🚋","🚌","🛻","⛵️","🚢","🛥","🚠","🚡","🚃","🚞"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}

//MARK:- Intents

extension EmojiMemoryGame {
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    
}
