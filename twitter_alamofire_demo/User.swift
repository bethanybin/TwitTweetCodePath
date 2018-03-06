//
//  User.swift
//  twitter_alamofire_demo
//
//  Created by Charles Hieger on 6/17/17.
//  Copyright © 2017 Charles Hieger. All rights reserved.
//

import Foundation

class User {
    
    var name: String
    static var current: User?
    var screenName: String
    var createDate: String
    var posterURL: URL
    var posterPath: String
    var dictionary: [String: Any]
    
    init(dictionary: [String: Any]) {
        self.dictionary = dictionary
        name = dictionary["name"] as! String
        screenName = dictionary["screen_name"] as! String
        createDate = dictionary["created_at"] as! String
        posterPath = dictionary["profile_image_url_https"] as! String
        posterURL = URL(string: posterPath)!

    }
    
}
