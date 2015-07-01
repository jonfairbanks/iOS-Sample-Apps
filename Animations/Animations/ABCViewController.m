//
//  ABCViewController.m
//  Animations
//
//  Created by Fairbanks, Jon on 5/9/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCViewController.h"

@interface ABCViewController ()

@property (nonatomic) CALayer *blueLayer;

@end

@implementation ABCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    self.blueLayer = [CALayer layer];
    
    self.blueLayer.position = CGPointMake(160, 200);
    self.blueLayer.bounds = CGRectMake(0, 0, 100, 80);
    
    self.blueLayer.backgroundColor = [[UIColor blueColor] CGColor]; // Set colored background (blue)
    //blueLayer.backgroundColor = [[UIColor clearColor] CGColor]; // Set transparent background
    
    self.blueLayer.cornerRadius = 10.0;
    
    self.blueLayer.shadowColor = [[UIColor blackColor] CGColor];
    self.blueLayer.shadowOffset = CGSizeMake(0, 4);
    self.blueLayer.shadowOpacity = 0.8;
    self.blueLayer.shadowRadius = 5.0;
    
    self.blueLayer.borderWidth = 1.0;
    self.blueLayer.borderColor = [[UIColor redColor] CGColor];
    
    
    [self.view.layer addSublayer:self.blueLayer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startAnimation:(id)sender
{
//    [CATransaction begin];
//    //[CATransaction setDisableActions:YES]; //Disables animations
//    [CATransaction setAnimationDuration:1.0];
//    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
//    
//    self.blueLayer.backgroundColor = [[UIColor redColor] CGColor];
//    self.blueLayer.borderColor = [[UIColor blueColor] CGColor];
//    self.blueLayer.shadowRadius = 20.0;
//    self.blueLayer.cornerRadius = 20.0;
//    
//    [CATransaction commit];
    
//    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"position"];
//    
//    anim1.fromValue = [NSValue valueWithCGPoint:CGPointMake(160, 200)];
//    anim1.toValue = [NSValue valueWithCGPoint:CGPointMake(160, 350)];
//    anim1.duration = 3.0;
//    anim1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    //anim1.autoreverses = YES;
//    //anim1.repeatCount = HUGE_VALF; // Repeats forever
//    
//    [CATransaction begin];
//    [CATransaction setDisableActions:YES];
//    self.blueLayer.position = CGPointMake(160, 350);
//    [CATransaction commit];
//    
//    [self.blueLayer addAnimation:anim1 forKey:@"moveLayer"];
    
    // --------------------------------------------------------------------------------------------- //
    
    CAKeyframeAnimation *anim2 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    anim2.keyTimes = @[ @0.0, @0.5, @1.0 ];
    anim2.values = @[ [NSValue valueWithCGPoint:CGPointMake(160, 200)],
                      [NSValue valueWithCGPoint:CGPointMake(160, 350)],
                      [NSValue valueWithCGPoint:CGPointMake(400, 350)] ];
    anim2.duration = 3.0;
    anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    self.blueLayer.position = CGPointMake(400, 350);
    [CATransaction commit];
    
    //[self.blueLayer addAnimation:anim2 forKey:nil];
    
    
    CAKeyframeAnimation *anim3 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    anim3.keyTimes = @[ @0.0, @0.5, @1.0 ];
    anim3.values = @[ @1.0, @0.3, @1.0 ];
    anim3.duration = 3.0;
    anim3.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = @[anim2, anim3];
    
    group.duration = 3.0;
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    [self.blueLayer addAnimation:group forKey:nil];
}

@end
