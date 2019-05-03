//
//  TableViewCell.swift
//  SneaKY
//
//  Created by Ni Tu on 3/5/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var imageS: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var size: UILabel!
    @IBOutlet var status: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var expried: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
