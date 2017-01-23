//
//  ViewController.m
//  100Numbers
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

- (void)viewWillAppear:(BOOL)animated {
    NSArray *array = [self getHundredNumbers];
    int total = [self sumAllNumbersInArray:array];
    [self sortArrayAscending:array];
    [self sortArrayDescending:array];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSArray *)getHundredNumbers {
    // @() crea un oggetto NSNumber
    NSMutableArray *array = @[].mutableCopy;
    
    for(int i = 0; i < 100; i++) {
        [array addObject:@([self getRandomNumberBetween:0 to:100])];
    }
    
    return array;
}

-(NSArray *)sortArrayAscending:(NSArray *)arrayToSort {
    NSArray *arrayToReturn = [arrayToSort sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if(value1 == value2) {
            return NSOrderedSame;
        }
        
        if(value1 < value2) {
            return NSOrderedAscending;
        }
        
        return NSOrderedDescending;
    }];
    NSLog(@"Ordine crescente: \n%@", arrayToReturn);
    return arrayToReturn;
}

-(NSArray *)sortArrayDescending:(NSArray *)arrayToSort {
    NSArray *arrayToReturn = [arrayToSort sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if(value1 == value2) {
            return NSOrderedSame;
        }
        
        if(value1 < value2) {
            return NSOrderedDescending;
        }
        
        return NSOrderedAscending;
    }];
    NSLog(@"Ordine decrescente: \n%@", arrayToReturn);
    return arrayToReturn;
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(int)sumAllNumbersInArray:(NSArray *)array {
    int temp = 0;
    for(int i = 0; i < array.count; i++) {
        temp += [array[i] intValue];
    }
    NSLog(@"Somma: %i", temp);
    return temp;
}


@end
