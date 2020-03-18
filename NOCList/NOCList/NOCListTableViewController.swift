//
//  NOCListTableViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 5/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NOCListTableViewController: UITableViewController
{
    private var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = [] // = [Agent1, Agent2, Agent3, Agent4, Agent5, Agent6, Agent7, Agent8, Agent9, Agent10, Agent11]
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNOCList()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell", for: indexPath)
        let agent = agents[indexPath.row]
        var cell.
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: - Private
    private func loadNOCList() {
        let Agent1 = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
        let Agent2 = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
        let Agent3 = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
        let Agent4 = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
        let Agent5 = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
        let Agent6 = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
        let Agent7 = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
        let Agent8 = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
        let Agent9 = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
        let Agent10 = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
        let Agent11 = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
        agents.append(Agent1)
        agents.append(Agent2)
        agents.append(Agent3)
        agents.append(Agent4)
        agents.append(Agent5)
        agents.append(Agent6)
        agents.append(Agent7)
        agents.append(Agent8)
        agents.append(Agent9)
        agents.append(Agent10)
        agents.append(Agent11)
    }
}

