//
//  JMSMainViewController.swift
//  SwiftWorkshop
//
//  Created by Joseph Richardson on 9/28/14.
//  Copyright (c) 2014 JMStudios. All rights reserved.
//

import UIKit

class JMSMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nestedTable(sender: AnyObject)
    {
        performSegueWithIdentifier("nestedTable", sender: self)
    }

    @IBAction func goToTableViewController(sender: AnyObject)
    {
        performSegueWithIdentifier("tableController", sender: self)
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
