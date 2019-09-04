//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Joseph Rogers on 7/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class AgentDetailViewController: UIViewController {
    //here we have outlets for the labels populating the detailVC
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!
    //we then create a agent used property which is a tuple. and has properties ready to have data passed through them.
    var agentUsed: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // here we give the cover name texts the value of the cover name for the agent.
        coverNameLabel.text = agentUsed.coverName
        //as well as the real name
        realNameLabel.text = agentUsed.realName
        //and again for the access level property and its respective outlet.
        accessLevelLabel.text = "\(agentUsed.accessLevel)"
        //then we have a small if statement checking if the agent is compromised. If so the views backround will change accordingly. 
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
