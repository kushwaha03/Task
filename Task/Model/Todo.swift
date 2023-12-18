//
//  Todo.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import Foundation

struct Todo: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
