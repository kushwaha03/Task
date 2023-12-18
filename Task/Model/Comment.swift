//
//  Comment.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import Foundation

struct Comment: Codable, Identifiable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
