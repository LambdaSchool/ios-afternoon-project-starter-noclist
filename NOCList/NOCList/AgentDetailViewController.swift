//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Bobby Keffury on 7/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    
    @IBOutlet weak var agentCoverName: UILabel!
    @IBOutlet weak var agentRealName: UILabel!
    @IBOutlet weak var accessLevel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = agent.coverName
        agentCoverName.text = agent.coverName
        agentRealName.text = agent.realName
        accessLevel.text = "\(agent.accessLevel)"
        if agent.compromised == true {
            view.backgroundColor = .red
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
