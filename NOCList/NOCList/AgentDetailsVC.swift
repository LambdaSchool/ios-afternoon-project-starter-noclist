//
//  AgentDetailsVC.swift
//  NOCList
//
//  Created by Jeffrey Santana on 7/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailsVC: UIViewController {

	@IBOutlet weak var realNameLbl: UILabel!
	@IBOutlet weak var coverNameLbl: UILabel!
	@IBOutlet weak var clearanceLvlLbl: UILabel!
	
	var secretAgent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)?
	
	override func viewDidLoad() {
        super.viewDidLoad()

		config()
		roundCorners()
    }
	
	func config() {
		if let secretAgent = secretAgent{
			realNameLbl.text = secretAgent.realName
			coverNameLbl.text = secretAgent.coverName
			clearanceLvlLbl.text = "\(secretAgent.accessLevel)"
			title = secretAgent.compromised ? "Status: Compromised" : "Status: Safe"
			
			view.backgroundColor = secretAgent.compromised ? .red : .white
		}
	}
	
	func roundCorners() {
		realNameLbl.layer.cornerRadius = 10
		coverNameLbl.layer.cornerRadius = 10
		clearanceLvlLbl.layer.cornerRadius = 10
	}
}
