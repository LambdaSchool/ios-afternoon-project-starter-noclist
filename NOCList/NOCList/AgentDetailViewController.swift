//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Vici Shaweddy on 7/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {

    @IBOutlet private weak var coverNameLabel: UILabel!
    @IBOutlet private weak var realNameLabel: UILabel!
    @IBOutlet private weak var accessLabel: UILabel!
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Agent Info"
        coverNameLabel.text = agent.coverName
        realNameLabel.text = agent.realName
        accessLabel.text = "\(agent.accessLevel)"
        
        if agent.compromised == true {
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
