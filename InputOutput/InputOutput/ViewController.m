//
//  ViewController.m
//  InputOutput
//
//  Created by Mattia Contin  on 23/01/2017.
//  Copyright © 2017 Mattia Contin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

-(IBAction)textWasEdited:(UITextField *)sender {
    NSLog(@"%@", sender.text);
    [_userNameLabel setText: sender.text];
}


@end
