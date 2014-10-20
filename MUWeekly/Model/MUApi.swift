//
//  MUApi.swift
//  MUWeekly
//
//  Created by Funky on 10/20/14.
//  Copyright (c) 2014 Funky. All rights reserved.
//

import UIKit

class MUApi: NSObject {
    
    struct StaticHelper {
        static var instance:MUApi?
        static var token: dispatch_once_t = 0
    }
    
    func sharedInstance() -> MUApi {
        dispatch_once(&StaticHelper.token, { () -> Void in
            StaticHelper.instance = MUApi ()
        })
    return StaticHelper.instance!
}
    
    func getLectures() -> (){
        
    }
}


  