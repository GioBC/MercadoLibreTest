//
//  ProductModel.swift
//  MercadoLibreTest
//
//  Created by Yermis Beltran on 27/08/21.
//

import Foundation

struct Product: Codable {
    var id: String?
    var pictures: [Pictures] = []

    enum CodingKeys: String, CodingKey {
        case id
        case pictures
    }
}

struct Pictures: Codable {
    var id: String
    var url: String
}

struct Description: Codable {
    var plainText: String?
    
    enum CodingKeys: String, CodingKey {
        case plainText = "plain_text"
    }
}
