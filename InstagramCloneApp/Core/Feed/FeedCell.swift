//
//  FeedCell.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
     
    var body: some View {
        VStack {
            // image + username
            HStack {
                if let user = post.user {
                    Image(user.profileImageUrl ?? "" )
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                    
                    Text(user.userName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                    Spacer()
                
            }
            .padding(.horizontal, 5)
            
            // post image
            
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            // action buttons
            HStack(spacing: 16) {
                Button {
                    // action
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    // action
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    // action
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
                
            }
            .padding(.horizontal, 5)
            .padding(.top,3)
            .foregroundStyle(.black)
            
            // likes label
            
            Text("\(post.likes)")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(.leading, 8)
            
            // caption label
            
            HStack{
                Text("\(post.user?.userName ?? "") ")
                    .fontWeight(.semibold) +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 8)
            
            Text("6h ago")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.gray )
                .font(.footnote)
                .padding(.leading, 8)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[0])
}
