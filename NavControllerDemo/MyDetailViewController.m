//
//  MyDetailViewController.m
//  NavControllerDemo
//
//  Created by Paul Von Schrottky on 3/4/14.
//  Copyright (c) 2014 PVS. All rights reserved.
//

#import "MyDetailViewController.h"

@interface MyDetailViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation MyDetailViewController

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
    
    self.title = @"Navigation bar title";
    self.label.text = [NSString stringWithFormat:@"You chose option: %@", self.option];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
