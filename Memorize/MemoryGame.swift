//
//  MemoryGame.swift
//  Memorize
//
//  Created by Dimitri Carabetchi on 18.05.25.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        // add numberOfPairsOfCards x2 cards
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }

    func choose(card: Card) {

    }

    mutating func shuffle() {
        cards.shuffle()
    }

    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
}
