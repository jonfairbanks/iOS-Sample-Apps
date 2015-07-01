//
//  ABCMapViewController.m
//  Container
//
//  Created by Fairbanks, Jon on 5/6/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCMapViewController.h"

@interface ABCMapViewController ()

@end

@implementation ABCMapViewController

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
    NSNotificationCenter *notifyCenter = [NSNotificationCenter defaultCenter];
    [notifyCenter addObserver:self selector:@selector(zoomMap:) name:@"com.jlfairbanks.slider" object:nil];
    
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(41.204327, -96.159930);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(center, 3000, 3000);
    
    [self.mapView setRegion:region animated:YES];
}

- (void) zoomMap:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
    NSNumber *numberValue = userInfo[@"value"];
    CGFloat value = [numberValue floatValue];
    
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(41.204327, -96.159930);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(center, value, value);
    
    [self.mapView setRegion:region animated:NO];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.blk(@"Hello", YES);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end