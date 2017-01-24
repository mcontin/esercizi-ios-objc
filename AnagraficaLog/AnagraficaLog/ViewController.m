//
//  ViewController.m
//  AnagraficaLog
//
//  Created by Mattia Contin  on 24/01/2017.
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

- (void)logData:(id)sender {
    NSString *name = _nameInput.text;
    NSString *surname = _surnameInput.text;
    NSString *age = _ageInput.text;
    
    NSLog(@"%@", name);
    NSLog(@"%@", surname);
    NSLog(@"%@", age);
}


@end
