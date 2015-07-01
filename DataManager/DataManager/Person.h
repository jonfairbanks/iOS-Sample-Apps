//
//  Person.h
//  DataManager
//
//  Created by Fairbanks, Jon on 5/8/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * personName;
@property (nonatomic, retain) NSNumber * personAge;
@property (nonatomic, retain) NSString * personSex;
@property (nonatomic, retain) NSSet *cars;
@end

@interface Person (CoreDataGeneratedAccessors)

- (void)addCarsObject:(NSManagedObject *)value;
- (void)removeCarsObject:(NSManagedObject *)value;
- (void)addCars:(NSSet *)values;
- (void)removeCars:(NSSet *)values;

@end
