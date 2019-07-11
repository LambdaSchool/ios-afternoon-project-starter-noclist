//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Joseph Rogers on 7/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class AgentDetailViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!
    var agentUsed: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    override func viewDidLoad() {
        super.viewDidLoad()
        coverNameLabel.text = agentUsed.coverName
        realNameLabel.text = agentUsed.realName
        accessLevelLabel.text = "\(agentUsed.accessLevel)"
        if agentUsed.compromised == true{
            view.backgroundColor = .red
        }else{
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
