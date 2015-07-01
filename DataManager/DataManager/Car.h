//
//  Car.h
//  DataManager
//
//  Created by Fairbanks, Jon on 5/8/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Person;

@interface Car : NSManagedObject

@property (nonatomic, retain) NSString * carModel;
@property (nonatomic, retain) NSString * carBrand;
@property (nonatomic, retain) NSString * carColor;
@property (nonatomic, retain) NSData * carPic;
@property (nonatomic, retain) NSSet *persons;
@end

@interface Car (CoreDataGeneratedAccessors)

- (void)addPersonsObject:(Person *)value;
- (void)removePersonsObject:(Person *)value;
- (void)addPersons:(NSSet *)values;
- (void)removePersons:(NSSet *)values;

@end
