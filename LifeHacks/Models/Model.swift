//
//  Model.swift
//  LifeHacks
//
//  Created by Richard Garrison on 4/24/21.
//

import Foundation

import Foundation

struct User {
    let name: String
    let aboutMe: String
    let profileImage: String
    let reputation: Int
}

struct Question {
    let title: String
    let body: String
    let score: Int
    let owner: User
}
