//
//  User.swift
//  InstagramCloneApp
//
//  Created by Minhaj on 14/11/2024.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var userName: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, userName: "Batman", profileImageUrl: "batman", fullName: "Bruce Wayne", bio: "Dark Knight Rises", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "Superman", profileImageUrl: "superman", fullName: "Clark Kent", bio: "Man of Steel", email: "superman@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "Venom", profileImageUrl: "venom", fullName: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "Ironman", profileImageUrl: "ironman", fullName: "Tony Stark", bio: "Playboy", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, userName: "Spiderman", profileImageUrl: "spiderman", fullName: "Peter Parker", bio: "Spidey", email: "spider man@gmail.com")
    ]
}
