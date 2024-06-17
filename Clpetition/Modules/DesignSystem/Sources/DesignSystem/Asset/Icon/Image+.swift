//
//  File.swift
//  
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI

public extension Image {
    
    static func icon(_ icon: Icon) -> Image {
        .init(icon.rawValue, bundle: .module)
    }
}
