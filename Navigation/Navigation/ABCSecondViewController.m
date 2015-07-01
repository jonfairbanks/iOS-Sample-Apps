//
//  ABCSecondViewController.m
//  Navigation
//
//  Created by Fairbanks, Jon on 5/5/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCSecondViewController.h"
#import "ABCThirdViewController.h"

@interface ABCSecondViewController ()

@end

@implementation ABCSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Second" image:nil selectedImage:nil];
        
        self.tabBarItem = tabBarItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Second";
    
    UIBarButtonItem *nextButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(goNext:)];
    
    self.navigationItem.rightBarButtonItem = nextButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goNext:(id)sender {
    ABCThirdViewController *secondVC = [[ABCThirdViewController alloc] initWithNibName:@"ABCThirdViewController" bundle:nil];
    
    [self.navigationController pushViewController:secondVC animated:YES];
}
@end
