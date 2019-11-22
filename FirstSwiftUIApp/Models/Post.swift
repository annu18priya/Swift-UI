//
//  Posts.swift
//  FirstSwiftUIApp
//
//  Created by annpriya on 21/11/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation

/// Since we will parsing the server data hence using codable protocol for parsing purpose
struct Post: Codable {
    let id: Int
    let title: String
    let body: String
}
