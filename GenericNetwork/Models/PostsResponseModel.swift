//
//  PostsResponseModel.swift
//  GenericNetwork
//
//  Created by Oğuzhan Erdem on 10.03.2023.
//


import Foundation
// MARK: - GeneralModelElement
public struct PostsResponseModel: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
