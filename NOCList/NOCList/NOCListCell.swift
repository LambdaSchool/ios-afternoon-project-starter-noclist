//
//  NOCListCell.swift
//  NOCList
//
//  Created by Jeffrey Santana on 7/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NOCListCell: UITableViewCell {

	@IBOutlet weak var realNameLbl: UILabel!
	@IBOutlet weak var coverNameLbl: UILabel!
	
	func config(secret agent: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)) {
		realNameLbl?.text = agent.realName
		coverNameLbl?.text = agent.coverName
		
		backgroundColor = agent.compromised ? UIColor.red : UIColor.white
	}
}
