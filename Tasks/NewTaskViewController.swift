//
//  NewTaskViewController.swift
//  Tasks
//
//  Created by Mark Pleskac on 10/22/14.
//  Copyright (c) 2014 Mark Pleskac. All rights reserved.
//

import Foundation
import UIKit

class NewTaskViewController: UIViewController {
    
    var delegate:AnyObject? = nil
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func done(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func saveTask(sender: UIButton) {
        if self.textField.text == "" {
            return
        }
        
        var taskListViewControler: ViewController = self.delegate! as ViewController;
        taskListViewControler.tasks.append(self.textField.text);
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
