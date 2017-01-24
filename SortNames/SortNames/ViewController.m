//
//  ViewController.m
//  SortNames
//
//  Created by Mattia Contin  on 23/01/2017.
//  Copyright © 2017 Mattia Contin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSMutableArray *names;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initializeArray];
    [self sortArray];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initializeArray {
    names = @[].mutableCopy;
    [names addObject:@"Freddie Campbell"];
    [names addObject:@"Krista Kim"];
    [names addObject:@"Merle Hubbard"];
    [names addObject:@"Lorraine Weber"];
    [names addObject:@"Lorenzo Greene"];
    [names addObject:@"Sandra Brockie"];
    [names addObject:@"Floyd Clarke"];
    [names addObject:@"Andrea Ramsey"];
    [names addObject:@"Marcus Reid"];
    [names addObject:@"Jacob Garza"];
    [names addObject:@"Peter Herrera"];
    [names addObject:@"Glenn Horton"];
    [names addObject:@"Francis Mack"];
    [names addObject:@"Yvette Farmer"];
    [names addObject:@"Evan Hughes"];
    [names addObject:@"Shelley Lane"];
    [names addObject:@"Gladys Carroll"];
    [names addObject:@"Stella Thornton"];
    [names addObject:@"Mindy Wilkerson"];
    [names addObject:@"Beth Diaz"];
    [names addObject:@"Everett Mckinney"];
    [names addObject:@"Audrey Cooper"];
    [names addObject:@"Christie Sutton"];
    [names addObject:@"Timothy Walters"];
}

- (void)sortArray {
    NSArray *sortedArray = [names sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    names = sortedArray.mutableCopy;
    NSLog(@"%@", names);
}

@end
