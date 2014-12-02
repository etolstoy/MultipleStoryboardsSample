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

static NSString *const PhotoViewSegueUserInfoKey = @"photoViewSegueUserInfo";

@class MSAPhotosAssembly;

@interface MSABestCatRouterImplementation () <MSABestCatRouter>

@property (strong, nonatomic) MSAPhotosAssembly *photosAssembly;

@end

@implementation MSABestCatRouterImplementation

#pragma mark - Initialization

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    return [super initWithNavigationController:navigationController];
}

#pragma mark - MSARoutingProtocol Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:sMSAPhotoViewController_Photos]) {
        NSURL *imageURL = [[segue.sourceViewController segueUserInfo:segue] objectForKey:PhotoViewSegueUserInfoKey];
        
        MSAPhotoViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.photoImageURL = imageURL;
        destinationViewController.router = self;
    }
}

- (void)dismissCurrentViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super dismissCurrentViewController:viewController animated:animated];
}

#pragma mark - Navigation Methods

- (void)showPhotoViewControllerFromSourceController:(UIViewController *)sourceController
                                            withURL:(NSURL *)imageURL {
    [sourceController performSegueWithIdentifier:sMSAPhotoViewController_Photos
                                          sender:self
                                        userInfo:@{PhotoViewSegueUserInfoKey : imageURL}];
}

@end