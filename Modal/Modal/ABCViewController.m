//
//  ABCViewController.m
//  Modal
//
//  Created by Fairbanks, Jon on 5/7/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCViewController.h"
#import "ABCModalViewController.h"

@interface ABCViewController ()

@end

@implementation ABCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender
{
    ABCModalViewController *modalViewController = [[ABCModalViewController alloc] initWithNibName:@"ABCModalViewController" bundle:nil];
    
    [modalViewController setDelegate:self];
    
    [self presentViewController:modalViewController animated:YES completion:nil];
}

- (void)modalViewController:(ABCModalViewController *)viewController didFinishWithCredentials:(NSDictionary *)credentials
{
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"Done");
}

@end
