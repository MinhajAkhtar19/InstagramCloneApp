//
//  LoginView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                // logo
                Text("Instagram")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .fontDesign(.monospaced)
                
                // textfields
                
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(IGTextFieldModifier())
                
                Button {
                    // action
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold )
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.horizontal, 24)
                        .padding(.top)
                }
                
                Button {
                    // action
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 24)
                        .frame(width: 360, height: 45)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .foregroundStyle(Color.white)
                        .padding(.top)
                }
                
                HStack {
                    Rectangle()
                        .frame(width: 150, height: 0.5)
                    
                    Text("OR")
                    
                    Rectangle()
                        .frame(width: 150, height: 0.5)
                }
                .foregroundStyle(Color.gray)
                .padding(.top)
                
                Button {
                    // action
                } label: {
                    HStack{
                        Image("facebookLogo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                        
                        Text("Continue with Facebook")
                            .fontWeight(.semibold)
                    }
                    .padding(.top, 8)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack {
                        Text("Don't have an account?")
                        
                        Text("SignUp.")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundStyle(Color.blue)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}


