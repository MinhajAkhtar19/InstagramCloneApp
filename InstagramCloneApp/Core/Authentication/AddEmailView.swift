//
//  AddEmailView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 12){
            Text("Add your email")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("You'll use this email to sign in your account")
                .font(.footnote)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
//            BlueButton(text: "Next")
            
            NavigationLink(destination: CreateUsernameView().navigationBarBackButtonHidden()) {
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
    AddEmailView()
}
