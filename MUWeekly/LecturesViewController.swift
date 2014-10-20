//
//  ViewController.swift
//  MUWeekly
//
//  Created by Funky on 10/16/14.
//  Copyright (c) 2014 Funky. All rights reserved.
//

import UIKit

class LecturesViewController: UITableViewController {
                            
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        var lectures = MUApi.sharedInstance().getLectures()
        
        
        //if user.loggedIn != true {}
        //auth
//        let navAuthentication:UINavigationController = UIStoryboard(name: "Authentication", bundle: nil)
//            .instantiateInitialViewController() as UINavigationController
//         presentViewController(navAuthentication, animated: true, completion: nil)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
}

