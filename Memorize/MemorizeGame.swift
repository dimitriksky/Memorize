//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Dimitri Carabetchi on 18.05.25.
//

import Foundation

struct MemorizeGame<CardContent> {
    var cards: Array<Card>

    func choseCard() {

    }

    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
