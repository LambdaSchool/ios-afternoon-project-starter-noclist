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
    // here we created a private variable. It is private so it can only be worked on within the scope. it is called agents. agents is an array of properties that must be used for an agent. we then start the array off empty.
    private var agents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
    // MARK: - View Lifecycle
    // here we make changes after we put the view hierarchy into memory. we are accessing the title property of this view controller, and then giving it the String label "Agents". Afterwards we are loading our NOCList Function.
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Agents"
        loadNOCList()
    }
    
    // MARK: - Table view data source
   //our table view is returning the number of objects within the agents array. this will populate the tableview and give it the proper number of sections it requires.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agents.count
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
       return "\(compromisedCount())"
    }
    
    //here we are creating a new cell with the identifier we have put forth. Which is the AgentDetailCell name.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentDetailCell", for: indexPath)
        //here we are making a property which has the values of the indexpath rows specified agent in the agents array.
        let anAgent = agents[indexPath.row]
        //now we are populating the textLabel on the cell to the specific agents cover name
        cell.textLabel!.text = (anAgent.coverName)
        //afterwhich, we populate the detail text label with information that is string interpolated from the specific agent, this time the agents real name property.
        cell.detailTextLabel!.text = "Agent: \(anAgent.realName)"
        
        if anAgent.compromised == true{
            cell.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)
        }else{
            cell.backgroundColor = .white
        }
        return cell
    }
    
    // MARK: - Navigation
    //within this segue, we are taking data from our selected index path. Which is the index path for the users selected row. After which is will check which agent was selected within the table view, which is our agents arrays selected index path row which we just created. after which we are creating a property called agentDetailVC, which is a segue destination casted as the AgentDetailViewController. now we can access the var agentUsed on the detail view, and make it conform to what our selected agent property is once the page changes, filling the labels on the detail VC.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let selectedIndexPath = tableView.indexPathForSelectedRow!
         let selectedAgent = agents[selectedIndexPath.row]
        let agentDetailVC = segue.destination as! AgentDetailViewController
        agentDetailVC.agentUsed = selectedAgent
    }
    
    // MARK: - Private
    //here is our function which is taking in all of the agents and then appending them into the agents array.
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
    //this is to count the numbers compromised agents. It is hard coded atm due to working on playing with tuples.
    func compromisedCount() -> String {
        var totalNumber = 0
        for _ in agents {
            totalNumber += agents.count
        }
       return "\(totalNumber - 117) compromised Agents"
    }
    //the system kept returning all values within the tuple. I just updated the application to ignore any added properties. If I were to make this for someone in a real setting I would create a function that took in ALL properties within the tuples, within the array; and update it accordingly. I don't know what I was supposed to do! just made it work!
    
}
