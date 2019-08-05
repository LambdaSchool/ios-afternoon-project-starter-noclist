//
//  NOCAgent.swift
//  NOCList
//
//  Created by Alex Rhodes on 8/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


struct NOCAgent: Equatable {
    var coverName: String
    var realName: String
    var accessLevel: Int
    var compromised: Bool
    
    init(coverName: String, realName: String, accessLevel: Int, compromised: Bool) {
        self.coverName = coverName
        self.realName = realName
        self.accessLevel = accessLevel
        self.compromised = compromised
    }
}
