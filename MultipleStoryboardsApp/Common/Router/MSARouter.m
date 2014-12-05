//
//  MSARouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSARouter.h"
#import "MSARoutingProtocol.h"

@interface MSARouter ()

@end

@implementation MSARouter

#pragma mark - Dismissing View Controller

- (void)dismissCurrentViewController:(UIViewController *)viewController
                            animated:(BOOL)animated {
    if (viewController.presentingViewController) {
        [viewController dismissViewControllerAnimated:animated completion:nil];
    } else {
        [viewController.navigationController popViewControllerAnimated:animated];
    }
}

@end