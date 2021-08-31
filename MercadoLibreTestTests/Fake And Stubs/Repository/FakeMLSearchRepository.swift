//
//  FakeMLSearchRepository.swift
//  MercadoLibreTestTests
//
//  Created by Yermis Beltran on 30/08/21.
//

import Foundation
@testable import MercadoLibreTest

class FakeMLSearchRepository: MLSearchRepositoryProtocol {
    func search(by keyword: String, completion: @escaping (MLViewListResult) -> Void) {
        var result = Result()
        result.price = 10000.0
        result.title = "Archivo"
        let model1 = ProductViewModel(product: result, repository: self)
        completion(.success([model1]))
    }
    
    func searchProduct(by id: String, completion: @escaping (MLViewProductResult) -> Void) {
        completion(.success(PicturesImagesViewModel(images: ["img1", "img2"])))
    }
    
    func searchDescription(by id: String, completion: @escaping (MLViewDescriptionResult) -> Void) {
        completion(.success("Descripción aquí"))
    }
    
    
}
