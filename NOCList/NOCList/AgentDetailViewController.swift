//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Fabiola S on 7/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var agentRealNameLabel: UILabel!
    @IBOutlet weak var agentAccessLevelLabel: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        coverNameLabel.text = agent.coverName
        agentRealNameLabel.text = agent.realName
        agentAccessLevelLabel.text = String(agent.accessLevel)
        
        if agent.compromised {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        } else {
            view.backgroundColor = .white
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
