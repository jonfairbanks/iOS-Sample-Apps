//
//  ABCViewController.m
//  Table
//
//  Created by Fairbanks, Jon on 5/7/14.
//  Copyright (c) 2014 Jon Fairbanks. All rights reserved.
//

#import "ABCViewController.h"
#import "ABCDetailViewController.h"
#import "ABCCustomTableViewCell.h"

@interface ABCViewController ()

@property (nonatomic, copy) NSArray *dataArray;

@end

@implementation ABCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    
    for (int i=0; i<100; i++)
    {
        tempArray[i] = [NSString stringWithFormat:@"%d", i];
    }
    self.dataArray = tempArray;
    
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"com.jlfairbanks.cell"];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ABCCustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"com.jlfairbanks.cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *cellIdentifier = @"com.jlfairbanks.cell";
    
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"com.jlfairbanks.cell"];
    
    //    if (cell == nil){
    //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    //    }
    
    ABCCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"com.jlfairbanks.cell" forIndexPath:indexPath];
    
    //    cell.textLabel.text = self.dataArray[indexPath.row];
    //    cell.detailTextLabel.text = @"Hello"; // Don't see "Hello" in your cells? Your cellStyle is set incorrectly.
    
    cell.titleLabel.text = self.dataArray[indexPath.row];
    
    UIImage *image = [UIImage imageNamed:@"landscape"];
    cell.backgroundImageView.image = image;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ABCDetailViewController *detailVC = [[ABCDetailViewController alloc] initWithNibName:@"ABCDetailViewController" bundle:nil];
    
    detailVC.textValue = self.dataArray[indexPath.row];
    
    [self.navigationController pushViewController:detailVC animated:YES];
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic]; <-- Enabling animation causes app to crash. Check Documentation for a fix. 
    NSMutableArray *tempArray = [self.dataArray mutableCopy];
    [tempArray removeObjectAtIndex:indexPath.row];
    self.dataArray = tempArray;
    [tableView reloadData];
}

@end
