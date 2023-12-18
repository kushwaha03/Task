//
//  CommentsView.swift
//  Task
//
//  Created by Radhe on 18/12/23.
//

import SwiftUI

struct CommentsView: View {
    
    @StateObject var viewModel = CommentViewModel()
    @State private var comments: [Comment] = []
    
    @State private var postIdNo: String = "1"
    @State private var postId: Int = 1             // Actual post ID as an Int
    var body: some View {
        VStack {
            TextField("Enter Post ID", text: $postIdNo)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .padding()
                           .onChange(of: postIdNo) { newValue in
                                               if let newPostId = Int(newValue) {
                                                   postId = newPostId
                                                   print(postId)
                                                   viewModel.fetchComments(postId: postId) { fetchedComments in
                                                       print(fetchedComments)
                                                          self.comments = fetchedComments
                                                      }
                                                   
                                               }
                                           }
            
            List(comments) { comment in
                VStack(alignment: .leading) {
                                   Text(comment.name).fontWeight(.bold)
                                   Text(comment.body)
                               }
            }
            
            .onAppear {
                viewModel.fetchComments(postId: postId) { fetchedComments in
                    print(fetchedComments)
                       self.comments = fetchedComments
                   }
            }
            
        }
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
