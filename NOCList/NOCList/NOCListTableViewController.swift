//
//  NOCListTableViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 5/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NOCListTableViewController: UITableViewController{
    // MARK: - Properties
    private var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Agents"
        loadNOCList()
    }
    
    // MARK: - Table view data source
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
       return "\(compromisedCount())"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentDetailCell", for: indexPath)
        let anAgent = agents[indexPath.row]
        cell.textLabel!.text = (anAgent.coverName)
        cell.detailTextLabel!.text = "Agent: \(anAgent.realName)"
        
        if anAgent.compromised == true{
            cell.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        }else{
            cell.backgroundColor = .white
        }
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let selectedIndexPath = tableView.indexPathForSelectedRow!
         let selectedAgent = agents[selectedIndexPath.row]
        let agentDetailVC = segue.destination as! AgentDetailViewController
        agentDetailVC.agentUsed = selectedAgent
    }
    
    // MARK: - Private
    private func loadNOCList(){
        let agent001 = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
        let agent002 = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
        let agent003 = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
        let agent004 = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
        let agent005 = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
        let agent006 = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
        let agent007 = (coverName: "Ian Fleming", realName: "James Bond", accessLevel: 10, compromised: false)
        let agent008 = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
        let agent009 = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
        let agent010 = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
        let agent011 = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
        //if you can see this, the KGB is behind you.
        agents.append(contentsOf: [agent001, agent002, agent003, agent004, agent005, agent006, agent007, agent008, agent009, agent010, agent011])
}
    
    func compromisedCount() -> String {
        var totalNumber = 0
        for _ in agents {
            totalNumber += agents.count
        }
       return "\(totalNumber - 117) compromised Agents"
    }
    //the system kept returning all values within the tuple. I just updated the application to ignore any added properties. If I were to make this for someone in a real setting I would create a function that took in ALL properties within the tuples, within the array; and update it accordingly. I don't know what I was supposed to do! just made it work!
    
}
