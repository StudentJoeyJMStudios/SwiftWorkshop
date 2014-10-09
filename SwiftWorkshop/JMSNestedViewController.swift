//
//  JMSNestedViewController.swift
//  SwiftWorkshop
//
//  Created by Joseph Richardson on 9/28/14.
//  Copyright (c) 2014 JMStudios. All rights reserved.
//

import UIKit

class JMSNestedViewController: UIViewController, UITableViewDelegate
{
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func viewSelectedData(sender: AnyObject)
    {
        performSegueWithIdentifier("viewSelected", sender: self)
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return workshopArray.count;
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> JMSWorkshopCell!
    {
        var cell : JMSWorkshopCell! = tableView.dequeueReusableCellWithIdentifier("planets")! as JMSWorkshopCell
        
        cell.planetName.text = workshopArray[indexPath.row]
        cell.planetImage.image = UIImage(named: workshopSRCArray[indexPath.row])
        
        return cell;
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        selectedItem = workshopArray[indexPath.row]
        
        selectedItemSRC = workshopSRCArray[indexPath.row]
        
        var data : String = "Nested \(selectedItem)"
        
        selectedData.append(data)
        
        performSegueWithIdentifier("viewItem", sender: self)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if(segue.identifier != "viewSelected")
        {
            var ds = segue.destinationViewController as JMSDisplayItemViewController
            
            ds.passedSelectedItem = selectedItem
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
