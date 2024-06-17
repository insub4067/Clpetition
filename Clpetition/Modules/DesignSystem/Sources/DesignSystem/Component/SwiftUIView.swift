//
//  SwiftUIView.swift
//  
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI

public struct BottomButton: View {
    
    let title: String
    let size: Size
    let disabled: Bool
    let action: () -> Void
    
    public init(
        _ title: String,
        size: Size = .large,
        disabled: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.size = size
        self.disabled = disabled
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                
        }
        .buttonStyle(BottomButtonStyle(size: size, disabled: disabled))
    }
    
    public enum Size {
        case medium, large
        
        var height: CGFloat {
            switch self {
            case .medium:
                return 46
            case .large:
                return 56
            }
        }
        
        var font: Font {
            switch self {
            case .medium:
                return .pretendard(.semiBold, size: 14)
            case .large:
                return .pretendard(.semiBold, size: 16)
            }
        }
    }
    
    public enum status {
        case active
        case pressed
        case disabled
    }
    
    struct BottomButtonStyle: ButtonStyle {
        
        let size: Size
        let disabled: Bool
        
        func makeBody(configuration: Configuration) -> some View {
            configuration
                .label
                .foregroundStyle(.white)
                .frame(height: size.height)
                .if(self.size == .large) {
                    $0.frame(maxWidth: .infinity)
                }
                .if(self.size == .medium) {
                    $0.frame(width: 210)
                }
                .font(size.font)
                .ifElse(disabled, {
                    $0.background(Colors.g4.color)
                }, {
                    $0.background(
                        configuration.isPressed
                        ? Color(hex: "8000E4")
                        : Color(hex: "9B4DFF")
                    )
                })
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    VStack {
        BottomButton(
            "작업 설정하고 시작하기",
            disabled: true,
            action: { })
        BottomButton(
            "작업 설정하고 시작하기",
            disabled: false,
            action: { })
    }
}
