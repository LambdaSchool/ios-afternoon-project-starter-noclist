//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by brian vilchez on 7/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {

    @IBOutlet weak var agentNameLabel: UILabel!
    
    @IBOutlet weak var agentStatusLabel: UILabel!
    
    @IBOutlet weak var agentAccessLevelLabel: UILabel!
    
    var agent: (coverName:String, realName:String, accessLevel:Int, compromised:Bool)!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = agent.coverName
        agentNameLabel.text = agent.realName
        agentAccessLevelLabel.text = "\(agent.accessLevel)"
        agentStatusLabel.text = "\(agent.compromised)"
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
