//
//  Day01_1App.swift
//  Shared
//
//  Created by LongDengYu on 2021/3/1.
//

import SwiftUI

@main
struct Day01_1App: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
