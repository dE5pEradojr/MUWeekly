 //
//  LectureDetailViewController.swift
//  MUWeekly
//
//  Created by Funky on 10/20/14.
//  Copyright (c) 2014 Funky. All rights reserved.
//

import UIKit

class LectureDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageView = UIImageView (frame: CGRectMake(10, 10, 100, 100))
        var url = NSURL(string: "http://www.w3schools.com/images/w3html.gif")
       
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)){ () -> Void in
            
            var data = NSData(contentsOfURL: url)
            var image = UIImage(data: data)
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
        
                imageView.image = image
                self.view.addSubview(imageView)
                })
           }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
