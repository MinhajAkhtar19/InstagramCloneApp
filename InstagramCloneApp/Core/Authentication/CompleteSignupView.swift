//
//  CompleteSignupView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 14/11/2024.
//

import SwiftUI

struct CompleteSignupView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 12){
            Text("Welcome to Instagram")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Click below to complete registration and start using the Instagram ")
                .font(.footnote)
                .foregroundStyle(Color.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                // action
            } label: {
                Text("Complete Sign Up")
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
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CompleteSignupView()
}
