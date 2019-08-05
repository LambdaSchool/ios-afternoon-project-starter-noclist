//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 8/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    var nocAgent: NOCAgent?
    
    
    @IBOutlet weak var accessLevelTextLabel: UILabel!
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }

    func updateViews() {
        
        guard let nocAgentSelected = nocAgent else {return}
        coverNameLabel.text = nocAgentSelected.coverName
        realNameLabel.text = nocAgentSelected.realName
        accessLevelLabel.text = "\(nocAgentSelected.accessLevel)"
        
        coverNameLabel.font = .boldSystemFont(ofSize: 17)
        realNameLabel.font = .systemFont(ofSize: 15)
        accessLevelTextLabel.textColor = .white
        coverNameLabel.textColor = .white
        realNameLabel.textColor = .white
        accessLevelLabel.textColor = .white
        view.backgroundColor = .black
        
        if nocAgent?.compromised == true {
            view.backgroundColor = .customRed
            accessLevelTextLabel.textColor = .black
            coverNameLabel.textColor = .black
            realNameLabel.textColor = .black
            accessLevelLabel.textColor = .black
        }
    }

}

