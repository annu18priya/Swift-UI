//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by annpriya on 21/11/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var postListVM = PostListViewModel()
    
    /// start making your UI using body property
    var body: some View {
        LoadingView(isShowing: .constant(true)) {
            List(self.postListVM.posts, id: \.id) { post in
                VStack(alignment: .leading) {
                    Text(post.title).font(.title)
                    Text(post.body)
                    ActivityIndicator(isAnimating: .constant(false), style: .large)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
