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
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGestureFrom:)];
    
    [tapGestureRecognizer setNumberOfTapsRequired:2];
    [tapGestureRecognizer setNumberOfTouchesRequired:1];
    
    [self.view addGestureRecognizer:tapGestureRecognizer];
}

- (void) handleGestureFrom:(UITapGestureRecognizer *)tapGesture
{
    switch (tapGesture.state){
            
        case UIGestureRecognizerStatePossible:
            break;
            
        case UIGestureRecognizerStateBegan:
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
        
        case UIGestureRecognizerStateRecognized:
            [self changeColor];
            break;
            
        case UIGestureRecognizerStateCancelled:
            break;
        
        case UIGestureRecognizerStateFailed:
            break;
    }
}

- (void)changeColor
{
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
