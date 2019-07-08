//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Alex Shillingford on 7/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var covernameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let agent = agent else { return }
        
        title = "\(agent.coverName)"
        updateViews()
    }
    
    func updateViews() {
        guard let agent = agent else { return }
        covernameLabel.text = agent.coverName
        realNameLabel.text = agent.realName
        accessLevelLabel.text = "\(agent.accessLevel)"
        
        if agent.compromised == true {
            self.view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        } else {
            self.view.backgroundColor = .white
        }
    }
}
