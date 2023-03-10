//
//  GetPostsRequest.swift
//  GenericNetwork
//
//  Created by Oğuzhan Erdem on 10.03.2023.
//

import Foundation

public struct GetPostsRequest: APIDecodableResponseRequest {
   
    
    public typealias ResponseType = [PostsResponseModel]?
    
    public var path: String = "posts"
    public var method: RequestMethod = .get
    
    public init() {
        self.path = "posts"
    }
}
