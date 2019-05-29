//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Kat Milton on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {

    @IBOutlet weak var coverName: UILabel!
    @IBOutlet weak var realName: UILabel!
    @IBOutlet weak var agentLevel: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        coverName.text = agent.coverName
        realName.text = agent.realName
        agentLevel.text = "\(agent.accessLevel)"
        if agent.compromised == true {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
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
