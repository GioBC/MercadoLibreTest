//
//  SearchViewModel.swift
//  MercadoLibreTest
//
//  Created by Yermis Beltran on 27/08/21.
//

import Foundation
import PKHUD

class SearchViewModel {
    
    var didUpdateResults: (() -> Void)?
    var didFailResults: (() -> Void)?
    
    var models: [ProductViewModel] = []
    var repository: MLSearchRepositoryProtocol
    
    init(repository: MLSearchRepositoryProtocol) {
        self.repository = repository
    }
    
    func search(by keyword: String) {
        HUD.show(.progress)
        repository.search(by: keyword) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let models):
                self.models = models
                self.didUpdateResults?()
                HUD.hide()
            case .failure(let error):
                self.didFailResults?()
                print("Error \(error)")
                HUD.hide()
            }
        }
    }
}
