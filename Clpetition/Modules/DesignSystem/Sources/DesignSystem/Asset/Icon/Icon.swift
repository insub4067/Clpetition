//
//  File.swift
//  
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI

public enum Icon: String {
    case arrow_left
    
    var image: Image { .icon(self) }
}
