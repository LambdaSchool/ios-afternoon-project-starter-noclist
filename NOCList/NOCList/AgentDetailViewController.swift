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
    @IBOutlet weak var agentStepper: UIStepper!
    
    
    var agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        coverName.text = agent.coverName
        realName.text = agent.realName
        agentLevel.text = "\(agent.accessLevel)"
       
        //UIStepper Configurations
        
        agentStepper.isContinuous = false
        agentStepper.autorepeat = true
        agentStepper.wraps = false
        agentStepper.maximumValue = 10
        agentStepper.value = Double(Int(agent.accessLevel))
        agentStepper.tintColor = .blue
        

        }
    
    //If the stepper value is changed to less than 5, the background will become white. If it is more than 5, it will become red.

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        agentLevel.text = String(Int(agentStepper.value))
        if agentStepper.value >= 5 {
            view.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        } else {view.backgroundColor = .white}
    }
   

    
}
