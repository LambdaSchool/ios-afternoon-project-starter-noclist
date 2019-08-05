//
//  NOCAgentController.swift
//  NOCList
//
//  Created by Alex Rhodes on 8/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class NOCAgentController {
    
    var nocAgent: NOCAgent?
    
    var NOCAgents: [NOCAgent] = [
        
        NOCAgent(coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true),
        NOCAgent(coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false),
        NOCAgent(coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false),
        NOCAgent(coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true),
        NOCAgent(coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false),
        NOCAgent(coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false),
        NOCAgent(coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true),
        NOCAgent(coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false),
        NOCAgent(coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true),
        NOCAgent(coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true),
        NOCAgent(coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
        
    ]

    func compromisedAgents() -> Int {
        var totalCompromised = 0
        
        for agent in NOCAgents {
            if agent.compromised == true {
                totalCompromised += 1
            }
        }
        return totalCompromised
    }
}
