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

@interface MSASettingsRouterImplementation () <MSASettingsRouter>

@property (strong, nonatomic) MSAPhotosAssembly *photosAssembly;

@end

@implementation MSASettingsRouterImplementation

#pragma mark - MSARoutingProtocol Methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:self];
}

- (void)dismissCurrentViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super dismissCurrentViewController:viewController animated:animated];
}

#pragma mark - Navigation Methods

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController {
    __weak typeof(self) weakSelf = self;
    
    MSAPreparationBlock block = ^void(UIStoryboardSegue *segue) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        MSAWarningViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.router = strongSelf;
    };
    
    [sourceController performSegueWithIdentifier:sWarningSegue sender:self preparationBlock:block];
}

@end