//
//  SwiftUIView.swift
//  
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI

public struct AppBar: View {
    
    public typealias IconItem = (Icon, () -> Void)
    
    let leadingItem: IconItem?
    
    public init(leadingItem: IconItem?) {
        self.leadingItem = leadingItem
    }
    
    public var body: some View {
        HStack {
            if let leadingItem {
                Button {
                    leadingItem.1()
                } label: {
                    leadingItem.0.image
                        .foregroundStyle(Colors.g8.color)
                }
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .frame(height: 56)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    WithDesignSystem {
        AppBar(leadingItem: (Icon.arrow_left, { }))
    } content: {
        EmptyView()
    }
}
