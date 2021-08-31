//
//  HTTPClient.swift
//  MercadoLibreTest
//
//  Created by Yermis Beltran on 27/08/21.
//

import Foundation
import Alamofire

typealias MLResult<Success> = Swift.Result<Success, HTTPClientError>

protocol HTTPClient {
    func request<T: Codable>(url: String, completion: @escaping (MLResult<T>) -> Void)
}

enum HTTPClientError: Swift.Error {
    case connectivity
    case serviceError
    case errorParser
    case badURL
    case coreDataError
    case emptyResults
}
