//
//  ViewController.m
//  EvenOdd
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
-(IBAction)resultWasRequested:(UITextField *)sender {
    NSCharacterSet* notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    if ([sender.text rangeOfCharacterFromSet:notDigits].location == NSNotFound) {
        int input = [sender.text intValue];
        if(input % 2 == 0) {
            [_resultLabel setText:@"Pari"];
        } else {
            [_resultLabel setText:@"Dispari"];
        }
    } else {
        [_resultLabel setText:@"Devi inserire un numero"];
    }
}

@end
