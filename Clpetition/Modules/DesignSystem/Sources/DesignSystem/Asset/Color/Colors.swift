//
//  File.swift
//  
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI

enum Colors {
    case g1
    case g2
    case g3
    case g4
    case g5
    case g6
    case g7
    case g8
    case g9
    case g10
    
    var color: Color {
        switch self {
        case .g1:
            return .init(hex: "F8F9FB")
        case .g2:
            return .init(hex: "F0F2F5")
        case .g3:
            return .init(hex: "E4E7ED")
        case .g4:
            return .init(hex: "D5DAE1")
        case .g5:
            return .init(hex: "C6CCD5")
        case .g6:
            return .init(hex: "AAB2B6")
        case .g7:
            return .init(hex: "727A7D")
        case .g8:
            return .init(hex: "5E6669")
        case .g9:
            return .init(hex: "3A3F41")
        case .g10:
            return .init(hex: "191919")
        }
    }
}
