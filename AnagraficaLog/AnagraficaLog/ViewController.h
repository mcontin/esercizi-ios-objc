//
//  ViewController.h
//  AnagraficaLog
//
//  Created by Mattia Contin  on 24/01/2017.
//  Copyright © 2017 Mattia Contin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UITextField *surnameInput;
@property (weak, nonatomic) IBOutlet UITextField *ageInput;

-(IBAction)logData:(id)sender;

@end

