//
//  ABCFirstViewController.m
//  Navigation
//
//  Created by Fairbanks, Jon on 5/5/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCFirstViewController.h"
#import "ABCSecondViewController.h"

@interface ABCFirstViewController ()

@end

@implementation ABCFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UIImage *image1 = [UIImage imageNamed:@"paypal"];
        UIImage *originalImage1 = [image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"First" image:originalImage1 selectedImage:nil];
        
        self.tabBarItem = tabBarItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"First";
    
    UIBarButtonItem *nextButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(goNext:)];
    
    self.navigationItem.rightBarButtonItem = nextButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goNext:(id)sender {
    ABCSecondViewController *secondVC = [[ABCSecondViewController alloc] initWithNibName:@"ABCSecondViewController" bundle:nil];
    
    [self.navigationController pushViewController:secondVC animated:YES];
}

@end
