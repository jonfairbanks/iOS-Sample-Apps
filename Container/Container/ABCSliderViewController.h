//
//  ABCSliderViewController.h
//  Container
//
//  Created by Fairbanks, Jon on 5/6/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ABCSliderViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)zoom:(id)sender;

@end
