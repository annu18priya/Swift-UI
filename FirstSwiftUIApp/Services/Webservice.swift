//
//  Webservice.swift
//  FirstSwiftUIApp
//
//  Created by annpriya on 21/11/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

class Webservice {
    
    /// by adding '?' it becomes optional which means that it will accept nil also.
    static func getPosts(completion: @escaping ([Post]?) -> ())  {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let post = try? JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(post)
            }
            
        }.resume()
        
    }
}
