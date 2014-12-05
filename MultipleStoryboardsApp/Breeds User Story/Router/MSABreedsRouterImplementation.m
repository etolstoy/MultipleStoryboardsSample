//
//  MSABreedsRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABreedsRouterImplementation.h"
#import "MSABreedsDetailViewController.h"
#import "MSAPhotoGalleryViewController.h"
#import "UIViewController+Routing.h"
#import "MSAPhotosAssembly.h"
#import "MSAWarningViewController.h"
#import "MSABreedsRouter.h"
#import "MSAStoryboardsIdentifiers.h"

static NSString *const BreedDetailSegueUserInfoKey = @"breedDetailSegueUserInfo";
static NSString *const BreedPhotosSegueUserInfoKey = @"breedPhotosSegueUserInfo";

@class MSACatBreed;

@interface MSABreedsRouterImplementation () <MSABreedsRouter>

@end

@implementation MSABreedsRouterImplementation

#pragma mark - MSARoutingProtocol Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:sBreedDetailSegue]) {
        MSACatBreed *catBreed = [[segue.sourceViewController segueUserInfo:segue] objectForKey:BreedDetailSegueUserInfoKey];
        
        MSABreedsDetailViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.catBreed = catBreed;
        destinationViewController.router = self;
    } else if ([segue.identifier isEqualToString:sMSAPhotoGalleryViewController_Photos]) {
        MSACatBreed *catBreed = [[segue.sourceViewController segueUserInfo:segue] objectForKey:BreedPhotosSegueUserInfoKey];
        
        MSABreedsDetailViewController *sourceViewController = segue.sourceViewController;
        MSAPhotoGalleryViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.catBreed = catBreed;
        destinationViewController.router = [self.photosAssembly photosRouterWithNavigationController:sourceViewController.navigationController];
    } else if ([segue.identifier isEqualToString:sWarningSegue]) {
        MSAWarningViewController *destinationController = segue.destinationViewController;
        destinationController.router = self;
    }
}

- (void)dismissCurrentViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super dismissCurrentViewController:viewController animated:animated];
}

#pragma mark - Navigation Methods

- (void)showBreedViewControllerFromSourceController:(UIViewController *)sourceController
                                       withCatBreed:(MSACatBreed *)catBreed {
    [sourceController performSegueWithIdentifier:sBreedDetailSegue
                                          sender:self
                                        userInfo:@{BreedDetailSegueUserInfoKey : catBreed}];
}

- (void)showPhotosViewControllerFromSourceController:(UIViewController *)sourceController
                                        withCatBreed:(MSACatBreed *)catBreed {
    [sourceController performSegueWithIdentifier:sMSAPhotoGalleryViewController_Photos
                                          sender:self
                                        userInfo:@{BreedPhotosSegueUserInfoKey : catBreed}];
}

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController {
    [sourceController performSegueWithIdentifier:sWarningSegue
                                          sender:self];
}

@end