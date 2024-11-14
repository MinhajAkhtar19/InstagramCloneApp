//
//  BlueButton.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct BlueButton: View {
    
    let text: String
    
    var body: some View {
        Button {
            // action
        } label: {
            Text(text)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.horizontal, 24)
                .frame(width: 360, height: 45)
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundStyle(Color.white)
                .padding(.top)
        }
    }
}

#Preview {
    BlueButton(text: "Next")
}
