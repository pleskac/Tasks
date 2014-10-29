//
//  ViewController.swift
//  Tasks
//
//  Created by Mark Pleskac on 10/21/14.
//  Copyright (c) 2014 Mark Pleskac. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UIView!
    var tasks : [String] = ["one", "two"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("completeTaskSegue", sender: self.tasks[indexPath.row])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as UIViewController;
        
        NSLog(segue.identifier);
        NSLog(sender as String);
        // Error this line when pressing add button
        if(segue.identifier == "completeTaskSegue"){
            destination.setValue(sender, forKeyPath: "task")
        }
        else{
            destination = segue.destinationViewController.topViewController
        }
        
        destination.setValue(self, forKeyPath: "delegate")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return tasks.count;
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell;
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell");
        }
        
        cell!.textLabel?.text = self.tasks[indexPath.row];
        
        //let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        //cell.textLabel?.text = items[indexPath.row]
        //cell.detailTextLabel?.text = "Test"
        return cell!
    }
    


}

