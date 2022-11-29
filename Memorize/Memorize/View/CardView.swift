//
//  CardView.swift
//  Memorize
//
//  Created by Pratyush  on 6/1/21.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape =  RoundedRectangle(cornerRadius: 20.0)
            shape
                .fill(card.isFaceUp ? Color.white : Color.red)
                .opacity(card.isMatched ? 0.0 : 1.0)
            if card.isFaceUp {
                shape
                    .strokeBorder(lineWidth: 3.0)
                    .foregroundColor(.red)

                Text(card.content).font(.largeTitle)
            }
        }
    }
}
