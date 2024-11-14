//
//  ProfileHeaderView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 14/11/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // pics and stats
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                HStack {
                    
                    UserStatView(value: 4, title: "Posts")
                    
                    UserStatView(value: 8, title: "Followers")
                    
                    UserStatView(value: 12, title: "Following")
                }
            }
            .padding(.horizontal)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4){
                Text(user.fullName ?? "")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text(user.bio ?? "")
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            
            // Button
            Button {
                // action
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .frame(width: 370, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray, lineWidth: 1))
            }
            
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
