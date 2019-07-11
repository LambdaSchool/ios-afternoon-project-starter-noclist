//
//  AgentItemTableViewCell.swift
//  NOCList
//
//  Created by Vici Shaweddy on 7/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
