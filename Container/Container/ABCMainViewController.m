//
//  ABCMainViewController.m
//  Container
//
//  Created by Fairbanks, Jon on 5/6/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCMainViewController.h"
#import "ABCMapViewController.h"
#import "ABCSliderViewController.h"

@interface ABCMainViewController ()

@end

@implementation ABCMainViewController

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
    ABCMapViewController *mapVC = [[ABCMapViewController alloc] initWithNibName:@"ABCMapViewController" bundle:nil];
    [self addChildViewController:mapVC];
    [[mapVC view] setFrame:CGRectMake(0, 0, 320, 280)];
    [[self view] addSubview:[mapVC view]];
    [mapVC didMoveToParentViewController:self];
    
    ABCSliderViewController *sliderVC = [[ABCSliderViewController alloc] initWithNibName:@"ABCSliderViewController" bundle:nil];
    [self addChildViewController:sliderVC];
    [[sliderVC view] setFrame:CGRectMake(0, 280, 320, 120)];
    [[self view] addSubview:[sliderVC view]];
    [sliderVC didMoveToParentViewController:self];
    
    mapVC.blk = ^void(NSString *str, BOOL completed){
        NSArray *arr = @[@"Hello", @"Ciao"];
        NSLog(@"%@", arr);
        if (completed){
            NSLog(@"%@", str);
        }
    };
    mapVC.blk(@"Hello", YES);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
