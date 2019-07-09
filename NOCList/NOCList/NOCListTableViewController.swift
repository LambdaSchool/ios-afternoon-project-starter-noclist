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
	
	private let agents = [
		(coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true),
		(coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false),
		(coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false),
		(coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true),
		(coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false),
		(coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false),
		(coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true),
		(coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false),
		(coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true),
		(coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true),
		(coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)
	]
	
	// MARK: - View Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	// MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return agents.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "NOCListCell", for: indexPath) as! NOCListCell
		let agent = agents[indexPath.row]
		
		cell.config(secret: agent)
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
		return "Number of agents compromised: \(compromisedCount())"
	}
	
	// MARK: - Navigation
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let agentDetailsVC = segue.destination as? AgentDetailsVC,
			let index = tableView.indexPathForSelectedRow{
			agentDetailsVC.secretAgent = agents[index.row]
		}
	}
	
	// MARK: - Private
	
	private func compromisedCount() -> Int {
		var count = 0
		
		for agent in agents {
			if agent.compromised {
				count += 1
			}
		}
		return count
	}
}
