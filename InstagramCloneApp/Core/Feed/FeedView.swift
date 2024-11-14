//
//  FeedView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(Post.MOCK_POSTS) { post in
                        FeedCell(post: post)
                    }
                }
            }
            .padding(.bottom, 8)
            .navigationTitle("Feed")
            .font(.title3)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Instagram")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // action
                    } label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.black)
                    }
                }
            }
        }
        
    }
}

#Preview {
    FeedView()
}
