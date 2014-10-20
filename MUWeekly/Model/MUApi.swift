//
//  MUApi.swift
//  MUWeekly
//
//  Created by Funky on 10/20/14.
//  Copyright (c) 2014 Funky. All rights reserved.
//

import UIKit

var instance:MUApi?

class MUApi: NSObject {
    
    struct StaticHelper {
        static var instance:MUApi?
        static var token: dispatch_once_t = 0
    }
    
    class func sharedInstance() -> MUApi {
        dispatch_once(&StaticHelper.token, { () -> Void in
            StaticHelper.instance = MUApi ()
        })
    return StaticHelper.instance!
}
    
    func getLectures(success:([Lecture])->()) {
        //качаем
        
        var request = NSMutableURLRequest(URL: NSURL(string: "http://weekly.master-up.net/api/mu/lectures/"))
        
        var session = NSURLSession.sharedSession()
        
        
        var task = session.dataTaskWithRequest(request, completionHandler: { (data, _, error) -> Void in
            
            var error: NSError?
            
            var json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableLeaves, error: &error)
            
            
            var resultLectures: [Lecture] = []
            
            if let lecturesArray = json as? NSArray{
                
                for lectureItem in lecturesArray {
                    if let lectureName = lectureItem["name"] as? String {
                        var resultLecture = Lecture()
                        resultLecture.name = lectureName
                        
                        resultLectures += [resultLecture]
                        
                    }
                    
                }
            }
            
            success(resultLectures)
        })
        
        task.resume()
    }
}