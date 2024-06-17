//
//  EnterNicknameView.swift
//  Clpetition
//
//  Created by 김인섭 on 6/18/24.
//

import SwiftUI
import DesignSystem

struct EnterNicknameView: View {
    
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        WithDesignSystem {
            AppBar(leadingItem: (Icon.arrow_left, { 
                dismiss()
            }))
        } content: {
            VStack {
                Text("클피티션에서 사용할\n닉네임을 알려주세요")
                    .font(.pretendard(.bold, size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 36)
                    .padding(.bottom, 11)
                Text("닉네임은 언제든 수정이 가능해요.")
                    .font(.pretendard(.medium, size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(Color(hex: "7C7C7C"))
                    .padding(.bottom, 22)
            }
            .padding(.horizontal, 20)
        } footer: {
            BottomButton("다음") {
                
            }
            .padding(20)
        }
    }
}

#Preview {
    EnterNicknameView()
}
