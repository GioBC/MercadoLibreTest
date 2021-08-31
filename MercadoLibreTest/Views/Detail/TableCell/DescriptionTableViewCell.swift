//
//  DescriptionTableViewCell.swift
//  MercadoLibreTest
//
//  Created by Yermis Beltran on 28/08/21.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var contentDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func config(description: String) {
        contentDescriptionLabel.text = description
    }
    
}
