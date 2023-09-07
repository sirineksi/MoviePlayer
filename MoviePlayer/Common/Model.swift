//
//  Model.swift
//  MoviePlayer
//
//  Created by ceksi on 28.08.2023.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
    let creationAt: String
    let updatedAt: String

    private enum CodingKeys: String, CodingKey {
        case id, name, image, creationAt = "creationAt", updatedAt = "updatedAt"
    }
}

struct Product: Codable, Identifiable {
    
    let id:Int
    let title:String
    let price:Int
    let description: String
    let category: Category
    let images: [String]
    
    private enum CodingKeys: String, CodingKey {
        case id, title, price, description, category, images
    }
}

struct User: Codable, Identifiable {
    let id: Int
    let email: String
    let password: String
    let name: String
    let role: String
    let avatar: String
    
    private enum CodingKeys: String, CodingKey {
        case id, email, password, name, role, avatar
    }
}
