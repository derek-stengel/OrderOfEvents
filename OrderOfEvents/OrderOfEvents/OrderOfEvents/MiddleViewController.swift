//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Derek Stengel on 2/21/24.
//

import UIKit

class MiddleViewController: UIViewController {
    
    
    @IBOutlet weak var middleViewLabel: UILabel!
    var eventNumber: Int = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
       

        // Do any additional setup after loading the view.
    

    
   
    
    
    
    func addEvent(from: String) {
        if let existingText = middleViewLabel?.text {
            middleViewLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    


}
