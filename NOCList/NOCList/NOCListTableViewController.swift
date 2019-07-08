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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell", for: indexPath)
        cell.textLabel?.text = agents[indexPath.row].coverName
        cell.detailTextLabel?.text = agents[indexPath.row].realName
        if agents[indexPath.row].compromised == true {
            cell.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        } else {
            cell.backgroundColor = .white
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(compromisedCount()) agents compromised"
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedIndexPath = tableView.indexPathForSelectedRow else { return }
        let selectedAgent = agents[selectedIndexPath.row]
        let detailVC = segue.destination as! AgentDetailViewController
        detailVC.agent = selectedAgent
    }
    
    // MARK: - Private
    private func loadNOCList() {
        let ethan = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true)
        let jim = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false)
        let claire = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
        let eugene = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
        let franz = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
        let luther = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
        let sarah = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
        let max = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
        let hannah = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: false)
        let jack = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
        let frank = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
        
        agents = [ethan, jim, claire, eugene, franz, luther, sarah, max, hannah, jack, frank]
    }
    
    private func compromisedCount() -> Int {
        var count = 0
        for item in agents {
            if item.compromised == true {
                count += 1
            } else {
                continue
            }
        }
        
        return count
    }
}
