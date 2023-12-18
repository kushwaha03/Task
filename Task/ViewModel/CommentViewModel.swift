//
//  CommentViewModel.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import Foundation

class CommentViewModel: ObservableObject {
    
    func fetchComments(postId: Int, completion: @escaping ([Comment]) -> Void) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/\(postId)/comments")!
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data, let comments = try? JSONDecoder().decode([Comment].self, from: data) {
                DispatchQueue.main.async {
                    completion(comments)
                }
            }
        }.resume()
    }
}
