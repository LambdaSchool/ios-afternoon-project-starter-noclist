//
//  NOCListTableViewController.swift
//  NOCList
//
//  Created by Ben Gohlke on 5/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class NOCListTableViewController: UITableViewController {
    
    private var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []

   
    
    // MARK: - Properties

   
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       loadNOCList()
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(compromisedCount()) agents compromised"
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Agents", for: indexPath) as?
            NOCListTableViewCell else {
                return UITableViewCell() }
        
        let anAgent = agents[indexPath.row]
        cell.agentCoverName.text = anAgent.coverName
        cell.agentRealName.text = anAgent.realName
        
        if anAgent.compromised == true {
            cell.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        } else {
            cell.backgroundColor = .white
        }
        
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndexPath = tableView.indexPathForSelectedRow!
        let selectedAgent = agents[selectedIndexPath.row]
        let agentDetailVC = segue.destination as! AgentDetailViewController
        agentDetailVC.agent = selectedAgent
        
    }
    
    // MARK: - Private


    private func loadNOCList()
    {
        let tC = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
        let jV = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
        let eB = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
        let hC = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
        let jR = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
        let vR = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
        let kST = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
        let vR2 = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
        let iD = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
        let eE = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
        let dD = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
    
        agents.append(contentsOf: [tC, jV, eB, hC, jR, vR, kST, vR2, iD, eE, dD])
}
    
    private func compromisedCount () -> String {
    var totalCount = 0
    for anAgent in agents {
        if anAgent.compromised == true {
            totalCount += 1
        }
        }
    return "\(totalCount)"
    }
}
