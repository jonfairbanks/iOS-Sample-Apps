//
//  ABCViewController.m
//  Scrolling
//
//  Created by Fairbanks, Jon on 5/7/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCViewController.h"
#import "UIScrollView+FastScrolling.h"

@interface ABCViewController ()

@end

@implementation ABCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"landscape_large"];
    CGSize imageSize = [image size];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    [self.scrollView setContentSize:imageSize];
    [self.scrollView addSubview:imageView];
    CGFloat speed = [self.scrollView scrollSpeed];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
