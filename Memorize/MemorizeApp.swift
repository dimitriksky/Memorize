//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dmitri Carabetchi on 16.05.25.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        @StateObject var game = EmojiMemoryGameViewModel()
        WindowGroup {
            EmojiMemoryGameView(emojiViewModel: game)
        }
    }
}
