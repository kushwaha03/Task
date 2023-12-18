//
//  ContentView.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DirectionsView()
                .tabItem {
                    Label("Directions", systemImage: "arrow.up")
                }

            TodoListView()
                .tabItem {
                    Label("Todos", systemImage: "list.bullet")
                }

            CommentsView()
                .tabItem {
                    Label("Comments", systemImage: "text.bubble")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
