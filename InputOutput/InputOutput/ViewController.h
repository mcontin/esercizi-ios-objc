//
//  ViewController.h
//  InputOutput
//
//  Created by Mattia Contin  on 23/01/2017.
//  Copyright © 2017 Mattia Contin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;

-(IBAction)textWasEdited:(id)sender;

@end

