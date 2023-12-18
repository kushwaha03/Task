//
//  TodoListView.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import SwiftUI

struct TodoListView: View {
    
    @StateObject var viewModel = TodoViewModel()
    @State private var todos: [Todo] = []
    
    var body: some View {
        VStack {
            List(todos) { todo in
                Text(todo.title)
            }
            
            .onAppear {
                viewModel.fetchTodos { fetchedTodos in
                    self.todos = fetchedTodos
                }
            }
            
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
