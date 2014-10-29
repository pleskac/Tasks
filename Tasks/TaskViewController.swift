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
        var x = self.delegate as ViewController
        // THIS IS A BUG
        //x.tasks.removeLast()
        
        for t in 0 ... x.tasks.count - 1{
            if(x.tasks[t] == task){
                x.tasks.removeAtIndex(t);
                break;
            }
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var task:String = ""
    var delegate:AnyObject? = nil
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.taskLabel.text = self.task;
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}