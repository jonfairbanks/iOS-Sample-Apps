//
//  ABCThirdViewController.m
//  Navigation
//
//  Created by Fairbanks, Jon on 5/5/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCThirdViewController.h"

@interface ABCThirdViewController ()

@end

@implementation ABCThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Third" image:nil selectedImage:nil];
        
        self.tabBarItem = tabBarItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Third";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
