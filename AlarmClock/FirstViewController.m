//
//  FirstViewController.m
//  AlarmClock
//
//  Created by Shreyas Gupta on 2/23/15.
//  Copyright (c) 2015 AlarmClockLLC. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dateTimePicker.date = [NSDate date];
    // Do any additional setup after loading the view, typically from a nib.
}

/*
- (void)viewDidUnload {
    [super viewDidUnload];
    // Do any additional setup after loading the view, typically from a nib.
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) scheduleLocalNotificationWithDate:(NSDate *)fireDate {
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.fireDate = fireDate;
    notification.alertBody = @"Time to Wake Up";
    //Where we will insert message from friend
    notification.soundName = @"tornado.mp3";
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}
-(IBAction)alarmsetbuttontTapped:(id)sensor; {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeZone = [NSTimeZone defaultTimeZone];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    
    NSString *dateTmeString = [dateFormatter stringFromDate:dateTimePicker.date];
    NSLog(@"Alarm Set Button Tapped: %@", dateTmeString);
    
    [self scheduleLocalNotificationWithDate: dateTimePicker.date];

}

-(IBAction)alarmcancelbuttontTapped:(id)sensor; {
    NSLog(@"Alarm Cancel Button Tapped");
}

@end
