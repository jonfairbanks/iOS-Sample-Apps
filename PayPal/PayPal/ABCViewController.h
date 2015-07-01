//
//  ABCViewController.h
//  PayPal
//
//  Created by Fairbanks, Jon on 5/9/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
// 

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *connectionResultTextView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

- (IBAction)startConnection:(id)sender;
@end
