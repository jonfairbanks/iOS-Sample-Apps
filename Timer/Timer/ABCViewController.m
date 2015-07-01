//
//  ABCViewController.m
//  Timer
//
//  Created by Fairbanks, Jon on 5/6/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCViewController.h"

@interface ABCViewController ()

@end

@implementation ABCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSString *str = @"Hello";
    NSNumber *res = @10;
    
    NSDictionary *dict = @{ @"String" : str, @"Result" : res};
    
    NSTimer *timer = [NSTimer timerWithTimeInterval:0.1
                                             target:self
                                           selector:@selector(timerFireMethod:)
                                           userInfo:dict
                                            repeats:YES];
    NSRunLoop *mainLoop = [NSRunLoop mainRunLoop];
    [mainLoop addTimer:timer forMode:NSDefaultRunLoopMode];
}

- (void)timerFireMethod:(NSTimer *)timer
{
    NSDictionary *dict = [timer userInfo];

    NSString *value = dict[@"String"];
    NSString *result = dict[@"Result"];
    
    CGFloat redValue = (arc4random() % 255) / 255.0f;
    CGFloat greenValue = (arc4random() % 255) / 255.0f;
    CGFloat blueValue = (arc4random() % 255) / 255.0f;
    
    self.view.backgroundColor = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
