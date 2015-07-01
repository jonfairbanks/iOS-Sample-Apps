//
//  ABCAnnotation.h
//  Map
//
//  Created by Fairbanks, Jon on 5/7/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

@import MapKit;

@interface ABCAnnotation : NSObject

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

@end
