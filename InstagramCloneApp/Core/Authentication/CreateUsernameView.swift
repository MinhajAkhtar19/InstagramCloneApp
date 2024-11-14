//
//  CreateUsernameView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var userName = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 12){
            Text("Create username")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("You'll use this username to sign in your account")
                .font(.footnote)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $userName)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
//            BlueButton(text: "Next")
            
            NavigationLink(destination: CreatePasswordView().navigationBarBackButtonHidden()) {
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
    CreateUsernameView()
}
