//
//  ProfileView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User

    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.userName == user.userName})
    }
    
    let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    var body: some View {
            ScrollView {
                
                // header
                
                ProfileHeaderView(user: user)
                
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
