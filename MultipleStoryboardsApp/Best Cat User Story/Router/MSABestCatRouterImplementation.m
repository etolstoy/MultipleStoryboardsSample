//
//  MSABestCatRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABestCatRouterImplementation.h"
#import "UIViewController+Routing.h"
#import "MSAPhotoViewController.h"
#import "MSABestCatRouter.h"
#import "MSAStoryboardsIdentifiers.h"

@class MSAPhotosAssembly;

@interface MSABestCatRouterImplementation () <MSABestCatRouter>

@property (strong, nonatomic) MSAPhotosAssembly *photosAssembly;

@end

@implementation MSABestCatRouterImplementation

#pragma mark - MSARoutingProtocol Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:self];
}

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
    
    [sourceController performSegueWithIdentifier:sMSAPhotoViewController_Photos sender:self preparationBlock:block];
}

@end