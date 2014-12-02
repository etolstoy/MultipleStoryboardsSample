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

@interface MSASettingsRouter ()

@property (strong, nonatomic) UINavigationController *mainNavigationController;

@end

@implementation MSASettingsRouter

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    if (self = [super init]) {
        self.mainNavigationController = navigationController;
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:WarningViewSegueIdentifier]) {
        MSAWarningViewController *warningViewController = segue.destinationViewController;
        warningViewController.router = self;
    }
}

- (void)dismissCurrentViewController:(UIViewController *)viewController { 
    if (viewController.presentingViewController) {
        [viewController dismissViewControllerAnimated:YES completion:nil];
    } else {
        [viewController.navigationController popViewControllerAnimated:YES];
    }
}

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController {
    [sourceController performSegueWithIdentifier:WarningViewSegueIdentifier
                                          sender:self];
}

@end
