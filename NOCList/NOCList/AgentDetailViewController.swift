//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Jason on 7/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let agent = agent else { return }
        coverNameLabel.text = agent.coverName
        realNameLabel.text = agent.realName
        levelLabel.text = "\(agent.accessLevel)"
        
        if agent.compromised == true {
            view.backgroundColor = .red
        }
    }
}
