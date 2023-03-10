//
//  DecodableResponseRequest.swift
//  GenericNetwork
//
//  Created by Oğuzhan Erdem on 10.03.2023.
//

import Foundation
public protocol DecodableResponseRequest: RequestProtocol {
    associatedtype ResponseType: Decodable
}

public protocol RequestProtocol {
    var path: String { get }
    var method: RequestMethod { get }
    var parameters: RequestParameters { get }
    var header: RequestHeaders { get }
    var encoding: RequestEncoding { get }
    var url: String { get }
}
    public typealias RequestParameters = [String: Any]
    public typealias RequestHeaders = [String:String]
    
    public enum RequestMethod {
        // 'CONNECT' method
        case connect
        // 'DELETE' method
        case delete
        // 'GET' method
        case get
        // 'HEAD' method
        case head
        // 'OPTIONS' method
        case options
        // 'PATCH' method
        case patch
        // 'POST' method
        case post
        // 'PUT' method
        case put
        // 'TRACE' method
        case trace
    }
    
public enum RequestEncoding {
    case url
    case json
}
