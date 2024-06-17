//
//  RegisterView.swift
//  Clpetition
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI
import DesignSystem

struct RegisterView: View {
    
    @State var destination: Destination?
    
    var body: some View {
        WithDesignSystem {
            EmptyView()
        } footer: {
            footers()
        }
        .navigationDestination(item: $destination) {
            $0.build()
        }
    }
    
    func content() -> some View {
        VStack {
            
        }
    }
    
    func footers() -> some View {
        VStack(spacing: 10) {
            Button {
                self.destination = .enterNickname
            } label: {
                footerButton(
                    "카카오로 3초만에 시작하기",
                    foreground: .init(hex: "3C1E1E"),
                    background: .init(hex: "FDE500")
                )
            }

            Button {
                self.destination = .enterNickname
            } label: {
                footerButton(
                    "애플로 시작하기",
                    foreground: .white,
                    background: .black
                )
            }
        }
        .padding(20)
    }
    
    func footerButton(
        _ label: String,
        foreground: Color,
        background: Color
    ) -> some View {
        HStack {
            Text(label)
                .font(.pretendard(.semiBold, size: 14))
        }
        .frame(maxWidth: .infinity)
        .frame(height: 52)
        .foregroundStyle(foreground)
        .background(background)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    enum Destination: Hashable {
        
        case enterNickname
        
        @ViewBuilder func build() -> some View {
            Group {
                switch self {
                case .enterNickname:
                    EnterNicknameView()
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    NavigationStack {
        RegisterView()
    }
}
