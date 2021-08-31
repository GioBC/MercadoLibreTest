//
//  PriceDetailTableViewCell.swift
//  MercadoLibreTest
//
//  Created by Yermis Beltran on 28/08/21.
//

import UIKit

class PriceDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = Theme.gray
    }
    
    func config(title: String, price: String) {
        priceLabel.text = price
        productTitleLabel.text = title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
