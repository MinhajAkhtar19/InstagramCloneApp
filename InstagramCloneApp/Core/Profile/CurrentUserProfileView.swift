//
//  CurrentUserProfileView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 14/11/2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.userName == user.userName})
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                // header
                
                
                ProfileHeaderView(user: user)
                
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // action
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(Color.black)
                    }

                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
