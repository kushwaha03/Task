//
//  TodoViewModel.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import Foundation

class TodoViewModel: ObservableObject {

    func fetchTodos(completion: @escaping ([Todo]) -> Void) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data, let todos = try? JSONDecoder().decode([Todo].self, from: data) {
                DispatchQueue.main.async {
                    completion(todos)
                }
            }
        }.resume()
    }
}
