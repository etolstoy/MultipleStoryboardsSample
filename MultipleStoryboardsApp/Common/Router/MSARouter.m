//
//  MSARouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSARouter.h"
#import "UIViewController+Routing.h"

@interface MSARouter ()

@end

@implementation MSARouter

#pragma mark - prepareForSegue:

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *sourceViewController = segue.sourceViewController;
    MSAPreparationBlock block = [sourceViewController preparationBlockForSegue:segue];
    
    if (block) {
        block(segue);
    }
}

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