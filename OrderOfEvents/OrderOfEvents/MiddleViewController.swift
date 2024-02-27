//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Derek Stengel on 2/21/24.
//

import UIKit

class MiddleViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
        addEvent(from: "viewWillAppear")
        addEvent(from: "viewDidAppear")
        addEvent(from: "viewWillDisappear")
        addEvent(from: "viewDidDisappear")
       

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet var middleViewOutlet: UILabel!
    
    var eventNumber: Int = 1
    
    func addEvent(from: String) {
        if let existingText = middleViewOutlet.text {
            middleViewOutlet.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
