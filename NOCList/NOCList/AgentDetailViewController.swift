//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 8/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        coverNameLabel.text = agent.coverName
        realNameLabel.text = agent.realName
        accessLevelLabel.text = "\(agent.accessLevel)"
        
        if agent.compromised == true {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        }
     
        
    }
}
