//
//  ABCModalViewController.m
//  Modal
//
//  Created by Fairbanks, Jon on 5/7/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCModalViewController.h"

@interface ABCModalViewController ()

@end

@implementation ABCModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender
{
    if(self.delegate && [self.delegate respondsToSelector:@selector(modalViewController:didFinishWithCredentials:)])
    {
        [self.delegate modalViewController:self didFinishWithCredentials:nil];
    }
}
@end
