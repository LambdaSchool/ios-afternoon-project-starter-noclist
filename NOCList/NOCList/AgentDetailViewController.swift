//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Steven Leyva on 7/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var agentCoverLabel: UILabel!
    @IBOutlet weak var agentRealLabel: UILabel!
    @IBOutlet weak var LevelLabel: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = agent.coverName
        agentCoverLabel.text = agent.coverName
         agentRealLabel.text = agent.realName
        LevelLabel.text = "Level \(agent.accessLevel)"
        if agent.compromised == true {
        view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        }
       
    }
    

}
