//
//  SearchTableViewCell.swift
//  MercadoLibreTest
//
//  Created by Yermis Beltran on 27/08/21.
//

import UIKit
import Alamofire
import AlamofireImage

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productoStateLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func config(product: ProductViewModel) {
        AF.request(product.imageURL).responseImage { [weak self] response in
            if case .success(let image) = response.result {
                self?.productImage.image = image
            }
        }
        
        productTitleLabel.text = product.title
        productPriceLabel.text = product.formattedPrice
        productoStateLabel.text = product.place
    }
    
}
