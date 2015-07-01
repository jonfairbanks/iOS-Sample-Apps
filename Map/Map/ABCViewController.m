//
//  ABCViewController.m
//  Map
//
//  Created by Fairbanks, Jon on 5/7/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCViewController.h"
#import "ABCAnnotation.h"

@interface ABCViewController ()

@end

@implementation ABCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Map Center: 41.185496, -96.103292
    //B1: 41.185935, -96.104944
    //B2: 41.18474, -96.102476
    //B3: 41.179895, -96.101789
    
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(41.185496,-96.103292);
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(center, 1500., 1500.); // . because they are floats (values are in meters)
    
    [self.mapView setRegion:region animated:YES];
    
    ABCAnnotation *annotation1 = [[ABCAnnotation alloc] init];
    ABCAnnotation *annotation2 = [[ABCAnnotation alloc] init];
    ABCAnnotation *annotation3 = [[ABCAnnotation alloc] init];
    
    annotation1.title = @"PayPal - Omaha";
    annotation1.subtitle = @"Building 1";
    annotation1.coordinate = CLLocationCoordinate2DMake(41.185935, -96.104944);
    
    annotation2.title = @"PayPal - Omaha";
    annotation2.subtitle = @"Building 2";
    annotation2.coordinate = CLLocationCoordinate2DMake(41.18474, -96.102476);
    
    annotation3.title = @"PayPal - Omaha";
    annotation3.subtitle = @"Building 3";
    annotation3.coordinate = CLLocationCoordinate2DMake(41.179895, -96.101789);
    
    [self.mapView addAnnotations:@[ annotation1, annotation2, annotation3]];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]]){
        return nil;
    }
    
    static NSString *pinIdentifier = @"com.jlfairbanks.pin";
    
    MKPinAnnotationView *pin = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:pinIdentifier];
    
    if(pin == nil) {
        pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:pinIdentifier];
    }
    
    pin.pinColor = MKPinAnnotationColorGreen;
    pin.canShowCallout = YES;
    pin.animatesDrop = YES;
    pin.draggable = NO;
    pin.highlighted = YES;
    
    return pin;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
