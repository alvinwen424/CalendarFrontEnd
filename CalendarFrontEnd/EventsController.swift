//
//  EventControllerViewController.swift
//  CalendarFrontEnd
//
//  Created by alvin wen on 7/6/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class EventsController: UITableViewController {

    let array = ["event1", "event2", "event3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EventManager.events.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventcell") as! EventCellTableViewCell
        let event = EventManager.events[indexPath.item]
        cell.textLabel?.text = event.name
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        }else{
            cell.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        }
        cell.event = event
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "eventview"){
            let cell = sender as! EventCellTableViewCell
            let eventview = segue.destination as! EventViewController
            eventview.details = cell.event
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
