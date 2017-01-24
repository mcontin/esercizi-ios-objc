//
//  ViewController.m
//  Timer
//
//  Created by Mattia Contin  on 24/01/2017.
//  Copyright © 2017 Mattia Contin. All rights reserved.
//

#import "ViewController.h"
#define TickTime 1

@interface ViewController () {
    int seconds;
    int minutes;
    int hours;
    NSTimer *gameTimer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    seconds = 0;
    
    gameTimer = [NSTimer scheduledTimerWithTimeInterval:TickTime target:self selector:@selector(timerTick) userInfo:nil repeats:true];
}

- (void)timerTick {
    seconds++;
    if(seconds == 60) {
        seconds = 0;
        minutes++;
        if(minutes == 60) {
            minutes = 0;
            hours++;
        }
    }
    NSLog(@"%i:%i:%i", hours, minutes, seconds);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
