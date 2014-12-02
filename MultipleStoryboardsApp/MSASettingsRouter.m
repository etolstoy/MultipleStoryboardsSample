//
//  MSASettingsRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSASettingsRouter.h"
#import "MSARoutingProtocol.h"
#import "MSAWarningViewController.h"
#import "UIViewController+Routing.h"

static NSString *const WarningViewSegueIdentifier = @"warningSegue";
static NSString *const WarningViewSegueUserInfoKey = @"warningViewSegueUserInfo";

@interface MSASettingsRouter () <MSARoutingProtocol>

@end

@implementation MSASettingsRouter

#pragma mark - Initialization

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    return [super initWithNavigationController:navigationController];
}

#pragma mark - MSARoutingProtocol Methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:WarningViewSegueIdentifier]) {
        MSAWarningViewController *warningViewController = segue.destinationViewController;
        warningViewController.router = self;
    }
}

- (void)dismissCurrentViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super dismissCurrentViewController:viewController animated:animated];
}

#pragma mark - Navigation Methods

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController {
    [sourceController performSegueWithIdentifier:WarningViewSegueIdentifier
                                          sender:self];
}

@end
