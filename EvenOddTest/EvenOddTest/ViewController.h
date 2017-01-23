//
//  ViewController.h
//  EvenOddTest
//
//  Created by Mattia Contin  on 23/01/2017.
//  Copyright © 2017 Mattia Contin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *questionFeedbackLabel;

-(IBAction)userAnsweredEven:(id)sender;
-(IBAction)userAnsweredOdd:(id)sender;

@end

