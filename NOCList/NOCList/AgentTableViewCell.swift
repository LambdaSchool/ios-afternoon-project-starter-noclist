//
//  AgentTableViewCell.swift
//  NOCList
//
//  Created by brian vilchez on 7/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentTableViewCell: UITableViewCell {

    @IBOutlet weak var agentCoverNameLabel: UILabel!
    
 @IBOutlet weak var agentAccessLevelLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
