//
//  ABCSliderViewController.m
//  Container
//
//  Created by Fairbanks, Jon on 5/6/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCSliderViewController.h"

@interface ABCSliderViewController ()

@end

@implementation ABCSliderViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)zoom:(id)sender {
    UISlider *slider = (UISlider *)sender;
    NSDictionary *userInfo = @{@"value":@(slider.value)};
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center postNotificationName:@"com.jlfairbanks.slider" object:self userInfo:userInfo];
}
@end
