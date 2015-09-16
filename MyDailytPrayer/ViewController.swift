//
//  ViewController.swift
//  notificationtest
//
//  Created by A&A macbook on 24/07/15.
//  Copyright (c) 2015 A&A macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func firebutton(sender: UIButton) {
    
       
        
    
        var datecomp:NSDateComponents = NSDateComponents()
        datecomp.year = 2015;
        datecomp.month = 09;
        datecomp.day = 11;
        datecomp.hour = 07;
        datecomp.minute = 00;
        datecomp.timeZone = NSTimeZone.systemTimeZone()
        
        var calendar:NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        var date:NSDate = calendar.dateFromComponents(datecomp)!
      

        
        var notification:UILocalNotification = UILocalNotification()
        notification.category = "notibible"
        notification.alertBody = "notibibletest2"
        notification.fireDate = date
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.repeatInterval = NSCalendarUnit.CalendarUnitDay
        
        
            UIApplication.sharedApplication().cancelAllLocalNotifications()
            UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    
    }


        

}

