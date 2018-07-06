//
//  AddEventControllerViewController.swift
//  CalendarFrontEnd
//
//  Created by alvin wen on 7/6/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class AddEventController: UIViewController {

    @IBOutlet weak var eventContent: UITextView!
    @IBOutlet weak var eventEndTime: UITextField!
    @IBOutlet weak var eventStartTime: UITextField!
    @IBOutlet weak var eventNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func AddClick(_ sender: AnyObject) {
        EventManager.AddEvent(name: eventNameText.text!, content: eventContent.text, startTime: eventStartTime.text!, endTime: eventEndTime.text!)
        eventEndTime.text = ""
        eventStartTime.text = ""
        eventContent.text = ""
        eventNameText.text = ""
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
