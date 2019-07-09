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
    // MARK: - Properties
  private  var agents: [(coverName:String, realName:String, accessLevel:Int, compromised:Bool)] = []
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAgentList()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AgentInformation", for: indexPath) as? AgentTableViewCell else { return UITableViewCell() }
        let agent = agents[indexPath.row]
        cell.agentCoverNameLabel.text = agent.coverName
        cell.agentAccessLevelLabel.text = "Access Level: \(agent.accessLevel)"
        
        
        if agent.compromised == true {
            cell.agentCoverNameLabel.textColor = .red
        } else {
            cell.agentCoverNameLabel.textColor = .green
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Number of agents Compromised: \(agentsCompromised())"
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndexPath = tableView.indexPathForSelectedRow!
        let selectedAgent = agents[selectedIndexPath.row]
        let agentDetailVC = segue.destination as! AgentDetailViewController
        agentDetailVC.agent = selectedAgent
        
    }
    
    // MARK: - Private
    private func loadAgentList() {
        
    let agentOne = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
    let agentTwo = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
    let agentThree = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
    let agentFour = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
    let agentFive = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
    let agentSix =   (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
    let agentSeven = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
    let agentEight = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
    let agentNine = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
    let agentTen = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
    let agentEleven = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
        agents = [ agentOne,
                  agentTwo,
                  agentThree,
                  agentFour,
                  agentFive,
                  agentSix,
                  agentSeven,
                  agentEight,
                  agentNine,
                  agentTen,
                  agentEleven]

    }
    func agentsCompromised() -> Int {
        
        var count = 0
        
        for agent in agents {
            
            if agent.compromised == true {
                count += 1
            }
        }
        return count
    }
}
