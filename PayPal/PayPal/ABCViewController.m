//
//  ABCViewController.m
//  PayPal
//
//  Created by Fairbanks, Jon on 5/9/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
// 

#import "ABCViewController.h"


@interface ViewController ()
@property (nonatomic) NSURLSession *session;
@property (nonatomic) NSURLSessionDataTask *dataTask;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    self.session = [NSURLSession sessionWithConfiguration:configuration];
    
    NSString *baseURL = @"https://api.paypal.com";
    NSString *urlString = [baseURL stringByAppendingString:@"/v1/oauth2/token"];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSMutableURLRequest *mutableRequest = [[NSMutableURLRequest alloc] initWithURL:url];
    
    mutableRequest.HTTPMethod = @"POST";
    
    NSString *bodyString = @"grant_type=client_credentials&response_type=token&return_authn_schemes=true";
    mutableRequest.HTTPBody = [bodyString dataUsingEncoding:NSUTF8StringEncoding];
    
    [mutableRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    [mutableRequest setValue:@"Basic <CLIENT ID>" forHTTPHeaderField:@"Authorization"];
    
    self.dataTask = [self.session dataTaskWithRequest:mutableRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            
            NSError *err;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.spinner stopAnimating];
                self.connectionResultTextView.text = [NSString stringWithFormat:@"%@", json];
            });
            
            
        });
        
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startConnection:(id)sender
{
    [self.spinner startAnimating];
    [self.dataTask resume];
}


@end

