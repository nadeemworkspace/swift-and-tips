//
//  BlackJackCard.swift
//  EnumBlackjack
//
//  Created by Pedro Rojas on 26/10/21.
//

import Foundation


struct BlackJackCard {
    enum Suit: String, CaseIterable, CustomStringConvertible {
        case club = "♣️"
        case diamond = "♦️"
        case heart = "❤️"
        case spade = "♠️"

        var description: String {
            return self.rawValue
        }
    }

    enum Number: CaseIterable {
        case ace
        case one, two, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king

        var value: Int {
            switch self {
            case .ace:
                return 0
            case .jack, .queen, .king, .ten:
                return 10
            case .one:
                return 1
            case .two:
                return 2
            case .three:
                return 3
            case .four:
                return 4
            case .five:
                return 5
            case .six:
                return 6
            case .seven:
                return 7
            case .eight:
                return 8
            case .nine:
                return 9
            }
        }
    }

    let suit: Suit
    let number: Number
}
