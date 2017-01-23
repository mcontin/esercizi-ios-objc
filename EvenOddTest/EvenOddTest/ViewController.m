//
//  ViewController.m
//  EvenOddTest
//
//  Created by Mattia Contin  on 23/01/2017.
//  Copyright © 2017 Mattia Contin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int number;
    bool shouldRestart;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(userRequestedRestart:)];
    [self.view addGestureRecognizer:gr];
}
- (void)viewWillAppear:(BOOL)animated {
    [self resetGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)resetGame {
    // disable the possibility to restart
    shouldRestart = false;
    
    // generate a random number between 1 and 99
    number = [self getRandomNumberBetween:1 to:99];
    [_numberLabel setText:[NSString stringWithFormat:@"%i",number]];
    
    // ask the player
    [_questionFeedbackLabel setText:@"Questo numero è pari o dispari?"];
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(void)userAnswerIsRight {
    // ask the player
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Corretto" message:@"Premi ok per ricominciare" preferredStyle:NULL];
    
    UIAlertAction *okAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * _Nonnull action) {
                                   [self resetGame];
                               }];
    
    [alertViewController addAction:okAction];
    
    [self presentViewController:alertViewController animated: true completion: nil];
    
    shouldRestart = true;
}

-(void)userAnswerIsWrong {
    // ask the player
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Sbagliato" message: @"Premi ok per ricominciare" preferredStyle:NULL];
    
    UIAlertAction *okAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * _Nonnull action) {
                                   [self resetGame];
                               }];
    
    [alertViewController addAction:okAction];
    
    [self presentViewController:alertViewController animated: true completion: nil];
    
    shouldRestart = true;
}

- (void)userRequestedRestart:(UIGestureRecognizer *)gestureRecognizer {
    if(shouldRestart) {
        [self resetGame];
    }
}

#pragma mark - Actions

-(IBAction)userAnsweredEven:(id)sender {
    if(number % 2 == 0) {
        [self userAnswerIsRight];
    } else {
        [self userAnswerIsWrong];
    }
}

-(IBAction)userAnsweredOdd:(id)sender {
    if(number % 2 != 0) {
        [self userAnswerIsRight];
    } else {
        [self userAnswerIsWrong];
    }
}

@end
