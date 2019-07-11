//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by John Kouris on 7/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never

        coverNameLabel.text = agent.coverName
        realNameLabel.text = agent.realName
        accessLevelLabel.text = "\(agent.accessLevel)"
        
        if agent.compromised {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        }
    }
    

    

}
