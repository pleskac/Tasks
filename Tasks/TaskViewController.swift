//
//  TaskViewController.swift
//  Tasks
//
//  Created by Mark Pleskac on 10/22/14.
//  Copyright (c) 2014 Mark Pleskac. All rights reserved.
//

import Foundation
import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var taskLabel: UILabel!
    
    @IBAction func doneClick(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func taskComplete(sender: UIButton) {
        //todo
    }
    
    var task:String = ""
    var delegate:AnyObject? = nil
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}