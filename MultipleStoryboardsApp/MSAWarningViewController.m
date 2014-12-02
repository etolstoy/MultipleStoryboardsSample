//
//  MSAWarningViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/2/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAWarningViewController.h"
#import "UIViewController+Routing.h"

@implementation MSAWarningViewController

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (IBAction)okayButtonClicked:(id)sender {
    [self.router dismissCurrentViewController:self
                                     animated:YES];
}

@end