//
//  CreatePasswordView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 14/11/2024.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 12){
            Text("Create password")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink(destination: CompleteSignupView().navigationBarBackButtonHidden()) {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 24)
                    .frame(width: 360, height: 45)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundStyle(Color.white)
                    .padding(.top)
                
            }
            Spacer()

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
    CreatePasswordView()
}
