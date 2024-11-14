//
//  SearchView.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 13/11/2024.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchUser = ""
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack (spacing: 12){
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 45, height: 45)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    Text(user.userName)
                                        .fontWeight(.semibold)
                                    
                                    Text(user.fullName ?? "")
    //                                if let fullName = user.fullName {
    //                                    Text(fullName)
    //                                }
                                }
                                .font(.footnote)
                        }
                            .foregroundStyle(Color.black)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchUser, prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline) 
        }
    }
}

#Preview {
    SearchView()
}
