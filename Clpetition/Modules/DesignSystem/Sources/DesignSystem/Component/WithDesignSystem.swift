//
//  SwiftUIView.swift
//  
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI

public struct WithDesignSystem<Header: View, Content: View, Footer: View>: View {
    
    let header: () -> Header
    let content: () -> Content
    let footer: () -> Footer
    
    public init(
        @ViewBuilder header: @escaping () -> Header = { EmptyView() },
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder footer: @escaping () -> Footer = { EmptyView() }
    ) {
        self.header = header
        self.content = content
        self.footer = footer
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            header()
            content()
            Spacer()
            footer()
        }
    }
}
