//
//  ViewController.swift
//  DKAlarmSample
//
//  Created by Dmitry Kurilo on 9/4/15.
//  Copyright (c) 2015 Dmitry Kurilo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scheduleButton: UIButton!
    @IBOutlet weak var secondsField: UITextField!
    
    @IBAction func schedule(sender: AnyObject) {
        if let seconds = secondsField.text.toInt() {
            var notification = UILocalNotification()
            notification.fireDate = NSDate().dateByAddingTimeInterval(NSTimeInterval(seconds));
            notification.timeZone = NSTimeZone.localTimeZone()
            notification.alertBody = "Wake up, Neo!";
            notification.soundName = "alarm29.m4a";
            UIApplication.sharedApplication().scheduleLocalNotification(notification);
        }
    }
    
    override func viewDidLoad() {
        // default is 5 sec.
        secondsField.text = "5";
    }
}

