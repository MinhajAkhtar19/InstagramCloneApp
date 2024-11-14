//
//  Post.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 14/11/2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Do you bleed?", likes: 100, imageUrl: "batman", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Hope", likes: 132, imageUrl: "superman", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Hey Eddie, Let's have some fun.", likes: 70, imageUrl: "venom", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Where's my briefcase?", likes: 174, imageUrl: "ironman", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Who's the spider", likes: 196, imageUrl: "spiderman", timestamp: Date(), user: User.MOCK_USERS[4])
    ]
}
