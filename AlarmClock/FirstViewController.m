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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)alarmsetbuttontTapped:(id)sensor; {
    NSLog(@"Alarm Set Button Tapped" );
}

-(IBAction)alarmcancelbuttontTapped:(id)sensor; {
    NSLog(@"Alarm Cancel Button Tapped");
}

@end
