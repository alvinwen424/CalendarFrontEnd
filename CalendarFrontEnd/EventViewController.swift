//
//  EventViewController.swift
//  CalendarFrontEnd
//
//  Created by alvin wen on 7/6/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    var details: Event?
    @IBOutlet weak var eventContent: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.title = details?.name
        self.eventContent.text = """
        Name of event: \(String(describing: details?.name))
        start Time: \(String(describing: details?.startTime))
        end Time: \(String(describing: details?.endTime))
        content: \(String(describing: details?.content))
        """
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
