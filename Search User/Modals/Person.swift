//
//  Person.swift
//  Search User
//
//  Created by Muhammad Hashir on 3/18/23.
//

import Foundation
class Person: Identifiable {
    
    init() {
        
    }
    
    init(image: String, name: String, tags: [String]) {
        self.image = image
        self.name = name
        self.tags = tags
    }
    
    var image = ""
    var name = ""
    var tags: [String] = []
}
