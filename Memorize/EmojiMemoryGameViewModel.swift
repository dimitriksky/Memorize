//
//  EmojiMemorizeGameVM.swift
//  Memorize
//
//  Created by Dimitri Carabetchi on 18.05.25.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    private static let emojis = ["👻","🧙‍♂️","🎃","🥸","😈","🦾","🍍","🦇","🐺","🐦‍⬛","🦉", "🐈‍⬛"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "‼"
            }
        }
    }

    @Published private var model = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }

    // MARK: - Intents

    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }

    func shuffle() {
        model.shuffle()
    }
}
