//
//  shoppingCell.swift
//  shoppingListV2
//
//  Created by Michiel Everts on 18-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

class shoppingCell: UITableViewCell {
    
    

    @IBOutlet weak var mainCell: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
