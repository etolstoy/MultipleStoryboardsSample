//
//  MSASettingsRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSASettingsRouterImplementation.h"
#import "MSAWarningViewController.h"
#import "UIViewController+Routing.h"
#import "MSASettingsRouter.h"
#import "MSAStoryboardsIdentifiers.h"

@class MSAPhotosAssembly;

static NSString *const WarningViewSegueUserInfoKey = @"warningViewSegueUserInfo";

@interface MSASettingsRouterImplementation () <MSASettingsRouter>

@property (strong, nonatomic) MSAPhotosAssembly *photosAssembly;

@end

@implementation MSASettingsRouterImplementation

#pragma mark - Initialization

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    return [super initWithNavigationController:navigationController];
}

#pragma mark - MSARoutingProtocol Methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:sWarningSegue]) {
        MSAWarningViewController *warningViewController = segue.destinationViewController;
        warningViewController.router = self;
    }
}

- (void)dismissCurrentViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super dismissCurrentViewController:viewController animated:animated];
}

#pragma mark - Navigation Methods

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController {
    [sourceController performSegueWithIdentifier:sWarningSegue
                                          sender:self];
}

@end