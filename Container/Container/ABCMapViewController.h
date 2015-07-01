//
//  ABCMapViewController.h
//  Container
//
//  Created by Fairbanks, Jon on 5/6/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ABCMapViewController : UIViewController

@property (nonatomic, copy) void(^blk)(NSString *str, BOOL completed);

@property (nonatomic, weak)IBOutlet MKMapView *mapView;

@end
