//
//  NOCAgentTableViewCell.swift
//  NOCList
//
//  Created by Alex Rhodes on 8/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NOCAgentTableViewCell: UITableViewCell {
    
 //   var nocAgentController: NOCAgentController?
    var nocAgent: NOCAgent? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateViews()
      
    }

    
    func updateViews() {
        guard let nocAgent = nocAgent else {return}
        
        coverNameLabel.font = .boldSystemFont(ofSize: 15)
        realNameLabel.font = .systemFont(ofSize: 15)
        coverNameLabel.textColor = .white
        realNameLabel.textColor = .white
        
        if nocAgent.compromised == true {
            realNameLabel.textColor = #colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)
        }
        
        coverNameLabel.text = nocAgent.coverName
        realNameLabel.text = nocAgent.realName
    }
}
