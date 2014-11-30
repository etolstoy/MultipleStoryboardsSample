//
//  MSABaseTableViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 30.11.14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABaseTableViewController.h"

@interface MSABaseTableViewController ()

@end

@implementation MSABaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    [_router prepareForSegue:segue sender:sender];
}

@end
