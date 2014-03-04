//
//  ViewController.m
//  NavControllerDemo
//
//  Created by Paul Von Schrottky on 3/4/14.
//  Copyright (c) 2014 PVS. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyDetailViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Nav Bar Title Goes Here";
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
    return 6;
}
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)[indexPath row]];
    return cell;
}
    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyDetailViewController *nextScreen = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    nextScreen.option = [NSString stringWithFormat:@"%ld", (long)[indexPath row]];
    [self.navigationController pushViewController:nextScreen animated:YES];
}
    
@end
