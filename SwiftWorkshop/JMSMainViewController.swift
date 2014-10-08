//
//  JMSMainViewController.swift
//  SwiftWorkshop
//
//  Created by Joseph Richardson on 9/28/14.
//  Copyright (c) 2014 JMStudios. All rights reserved.
//

import UIKit

class JMSMainViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
//    func getAstronomyInfo() -> ()
//    {
//        
//        var multiURL:String = "http://www.astronomyapi.com/api_v1/almanac?appid=141263888419&appsecret=5a4c2d676938e281d72b8d504d4ed1de&date=2013/10/03&time=05:02:00&lat=6,56,0&lng=79,51,0&tz=6.5"
//        
//        let url = NSURL(string:multiURL)
//        
//        var session = NSURLSession.sharedSession()
//        
//        var task:NSURLSessionDataTask = session.dataTaskWithURL(url, completionHandler:apiHandler)
//        task.resume()
//        
//    }
//    //MARK: API Handler Movies
//    func apiHandler(data:NSData!, response:NSURLResponse!, error:NSError!)
//    {
//        //JMSTimer.End("API handler movies line 95")
//        if (error != nil)
//        {
//            println("API error: \(error), \(error.userInfo)")
//        }
//        var jsonError:NSError?
//        
//        var json: Dictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &jsonError)!.dictionaryRepresentation() as? Dictionary
//        
//        println(json)
//        
//        
//        //var json : Dictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &jsonError) as Dictionary
//       
//        
//                
//        
//        
//    }
    override func didReceiveMemoryWarning()
    {
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
