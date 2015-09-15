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
        
        var datecomp1:NSDateComponents = NSDateComponents()
        datecomp.year = 2015;
        datecomp.month = 09;
        datecomp.day = 11;
        datecomp.hour = 09;
        datecomp.minute = 30;
        datecomp.timeZone = NSTimeZone.systemTimeZone()
        
        
        var calendar1:NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        var date1:NSDate = calendar.dateFromComponents(datecomp1)!
        
        
        var notification1:UILocalNotification = UILocalNotification()
        notification.category = "notibible"
        notification.alertBody = "working"
        notification.fireDate = date
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.repeatInterval = NSCalendarUnit.CalendarUnitDay
        
        
        var datecomp2:NSDateComponents = NSDateComponents()
        datecomp.year = 2015;
        datecomp.month = 09;
        datecomp.day = 11;
        datecomp.hour = 10;
        datecomp.minute = 00;
        datecomp.timeZone = NSTimeZone.systemTimeZone()
        
        
        var calendar2:NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        var date2:NSDate = calendar.dateFromComponents(datecomp2)!
        
        
        var notification2:UILocalNotification = UILocalNotification()
        notification.category = "notibible"
        notification.alertBody = "10 manikathe"
        notification.fireDate = date
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.repeatInterval = NSCalendarUnit.CalendarUnitDay

            
            UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    
    }


        

}

