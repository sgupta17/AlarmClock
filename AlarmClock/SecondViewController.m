//
//  SecondViewController.m
//  AlarmClock
//
//  Created by Shreyas Gupta on 2/23/15.
//  Copyright (c) 2015 AlarmClockLLC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)PlayTornadoSound:(id)sender {
    NSString *effectTitle=@"tornado";
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:effectTitle ofType:@"wav"];
    NSURL *soundUrl = [NSURL fileURLWithPath:soundPath];
    NSLog(@"%@", soundUrl);
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundUrl, &soundID);
    NSLog(@"%u",(unsigned int)soundID);
    AudioServicesPlaySystemSound(1007);
    
}

- (IBAction)PlaySound:(UIButton *)sender {
    AudioServicesPlaySystemSound(1007);
}
@end