//
//  MSAPhotosRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAPhotosRouterImplementation.h"
#import "UIViewController+Routing.h"
#import "MSAPhotoViewController.h"
#import "MSAPhotosRouter.h"
#import "MSAStoryboardsIdentifiers.h"

@interface MSAPhotosRouterImplementation () <MSAPhotosRouter>

@end

@implementation MSAPhotosRouterImplementation

#pragma mark - MSARoutingProtocol Methods

- (void)dismissCurrentViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super dismissCurrentViewController:viewController animated:animated];
}

#pragma mark - Navigation Methods

- (void)showPhotoViewControllerFromSourceController:(UIViewController *)sourceController
                                            withURL:(NSURL *)imageURL {
    __block typeof(imageURL) blockImageURL = imageURL;
    
    MSAPreparationBlock block = ^void(UIStoryboardSegue *segue) {
        MSAPhotoViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.photoImageURL = blockImageURL;
    };
    
    [sourceController performSegueWithIdentifier:sPhotoViewSegue sender:self preparationBlock:block];
}

@end
