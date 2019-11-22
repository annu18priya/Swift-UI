//
//  PostListViewModel.swift
//  FirstSwiftUIApp
//
//  Created by annpriya on 21/11/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

/// This will cover whole screen.
class PostListViewModel: ObservableObject {
    @Published var posts = [PostViewModel]()
    
    /// initializing the PostListViewModel
    init() {
        
        Webservice.getPosts { posts in
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }
        }
    }
}


/// This is for the individual section of the post.
struct PostViewModel {
    var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    /// returning the title and body for this
    var title: String {
        return self.post.title
    }
    
    var id: Int {
        return self.post.id
    }
    
    var body: String {
        return self.post.body
    }
}
