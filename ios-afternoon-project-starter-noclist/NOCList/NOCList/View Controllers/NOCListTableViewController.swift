//
//  NOCListTableViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 5/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NOCListTableViewController: UITableViewController {

    var nocAgentController = NOCAgentController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .black
        
        view.backgroundColor = .black
        
        title = "Agents"
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nocAgentController.NOCAgents.count
        
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        tableView.tableFooterView?.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        tableView.sectionFooterHeight = 40
        return "\(nocAgentController.compromisedAgents()) agents compromised"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NOCAgentCell", for: indexPath) as? NOCAgentTableViewCell else {return UITableViewCell()}
        
        let agents = nocAgentController.NOCAgents[indexPath.row]
        cell.nocAgent = agents
        
        if agents.compromised == true {
            cell.backgroundColor = .customRed
        }
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NOCAgentDetailSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let agentDetailVC = segue.destination as? AgentDetailViewController else {return}
            agentDetailVC.nocAgent = nocAgentController.NOCAgents[indexPath.row]
        }

}
}
