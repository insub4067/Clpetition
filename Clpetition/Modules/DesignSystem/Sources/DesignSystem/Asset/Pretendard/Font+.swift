//
//  File.swift
//  
//
//  Created by 김인섭 on 6/17/24.
//

import SwiftUI

public extension Font {
    
    static func fonts(_ font: Fonts) -> Font {
        .init(UIFont.pretendard(font.pretendard, size: font.size))
    }
    
    static func pretendard(_ font: Pretendard, size: CGFloat) -> Font {
        .init(UIFont.pretendard(font, size: size))
    }
}
