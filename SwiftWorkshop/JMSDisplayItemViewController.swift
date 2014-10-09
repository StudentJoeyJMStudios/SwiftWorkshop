//
//  JMSDisplayItemViewController.swift
//  SwiftWorkshop
//
//  Created by Joseph Richardson on 10/7/14.
//  Copyright (c) 2014 JMStudios. All rights reserved.
//

import UIKit

class JMSDisplayItemViewController: UIViewController
{
    var passedSelectedItem : String = ""
    
    @IBOutlet weak var imageOfPlanet: UIImageView!
    @IBOutlet weak var nameItem: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        nameItem.text = selectedItem
        
        imageOfPlanet.image = UIImage(named: selectedItemSRC)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func viewSelectedItems(sender: AnyObject)
    {
        performSegueWithIdentifier("viewSelected", sender: self)
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
