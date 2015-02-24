//
//  FirstViewController.h
//  AlarmClock
//
//  Created by Shreyas Gupta on 2/23/15.
//  Copyright (c) 2015 AlarmClockLLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    IBOutlet UIDatePicker *dateTimePicker;
}

-(void) scheduleLocalNotificationWithDate: (NSDate *) fireDate;
-(IBAction) alarmsetbuttontTapped:(id)sensor;
-(IBAction) alarmcancelbuttontTapped:(id)sensor;


@end

