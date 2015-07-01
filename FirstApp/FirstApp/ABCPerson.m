//
//  ABCPerson.m
//  FirstApp
//
//  Created by Fairbanks, Jon on 5/5/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCPerson.h"

@implementation ABCPerson

- (id)init
{
    return [self initWithName:@"Jon" age:25];
}

- (id)initWithName:(NSString *)name age:(int)age;
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
    }
    return self;
}

- (void) talk
{
    NSLog(@"Talk");
}

- (void) walk
{
    NSLog(@"Walk");
}

@synthesize name = _name;
@synthesize age = _age;

//- (NSString *)name // ** Name 'Getter' **
//{
//    return _name;
//}
//
//- (void)setName:(NSString *)newName // ** Name 'Setter' **
//{
//    _name = newName;
//}
//
//- (int)age // ** Age 'Getter' **
//{
//    return _age;
//}
//
//- (void)setAge:(int)age // ** Age 'Setter' **
//{
//    _age = age;
//}

@end
