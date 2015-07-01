//
//  ABCPerson.h
//  FirstApp
//
//  Created by Fairbanks, Jon on 5/5/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABCPerson : NSObject
{
    NSString *_name;
    int _age;
}


@property (nonatomic, readwrite, copy) NSString *name;
//- (NSString *)name;
//- (void)setName:(NSString *)newName;

@property (nonatomic, readwrite) int age;
//- (int)age;
//- (void)setAge:(int)age;


- (id)initWithName:(NSString *)name age:(int)age;


- (void)talk;
- (void)walk;

@end
