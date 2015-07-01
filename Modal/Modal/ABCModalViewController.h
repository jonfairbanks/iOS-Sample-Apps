//
//  ABCModalViewController.h
//  Modal
//
//  Created by Fairbanks, Jon on 5/7/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ABCModalViewControllerDelegate;

@interface ABCModalViewController : UIViewController

@property (nonatomic, weak) id<ABCModalViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end

@protocol ABCModalViewControllerDelegate <NSObject>

- (void)modalViewController:(ABCModalViewController *)viewController didFinishWithCredentials:(NSDictionary *)credentials;

@end