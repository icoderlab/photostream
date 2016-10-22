//
//  NewsFeedService.swift
//  Photostream
//
//  Created by Mounir Ybanez on 22/10/2016.
//  Copyright © 2016 Mounir Ybanez. All rights reserved.
//

import UIKit

protocol NewsFeedService {
    
    init(session: AuthSession)
    func fetchNewsFeed(offset: UInt, limit: UInt, callback: ((NewsFeedServiceResult) -> Void)?)
}

struct NewsFeedServiceResult {
    
    var posts: [Post]?
    var error: NewsFeedServiceError?
}

enum NewsFeedServiceError: Error {
    
    case failedToFetchNewsFeed(message: String)
    
    var message: String {
        switch self {
        case .failedToFetchNewsFeed(let message):
            return message
        }
    }
}

