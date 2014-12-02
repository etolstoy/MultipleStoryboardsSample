//
//  MSABreedsRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABreedsRouterImplementation.h"
#import "MSARoutingProtocol.h"
#import "MSABreedsDetailViewController.h"
#import "MSAPhotoGalleryViewController.h"
#import "UIViewController+Routing.h"
#import "MSAPhotosAssembly.h"
#import "MSAWarningViewController.h"
#import "MSABreedsRouter.h"

static NSString *const BreedDetailSegueIdentifier = @"breedDetailSegue";
static NSString *const BreedWarningSegueIdentifier = @"warningSegue";
static NSString *const BreedPhotosSegueIdentifier = @"MSAPhotoGalleryViewController@Photos";

static NSString *const BreedDetailSegueUserInfoKey = @"breedDetailSegueUserInfo";
static NSString *const BreedPhotosSegueUserInfoKey = @"breedPhotosSegueUserInfo";

@class MSACatBreed;

@interface MSABreedsRouterImplementation () <MSARoutingProtocol, MSABreedsRouter>

@end

@implementation MSABreedsRouterImplementation

#pragma mark - Initialization

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    return [super initWithNavigationController:navigationController];
}

#pragma mark - MSARoutingProtocol Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:BreedDetailSegueIdentifier]) {
        MSACatBreed *catBreed = [[segue.sourceViewController segueUserInfo:segue] objectForKey:BreedDetailSegueUserInfoKey];
        
        MSABreedsDetailViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.catBreed = catBreed;
        destinationViewController.router = self;
    } else if ([segue.identifier isEqualToString:BreedPhotosSegueIdentifier]) {
        MSACatBreed *catBreed = [[segue.sourceViewController segueUserInfo:segue] objectForKey:BreedPhotosSegueUserInfoKey];
        
        MSAPhotoGalleryViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.catBreed = catBreed;
        destinationViewController.router = [self.photosAssembly photosRouterWithNavigationController:self.mainNavigationController];
    } else if ([segue.identifier isEqualToString:BreedWarningSegueIdentifier]) {
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
    [sourceController performSegueWithIdentifier:BreedDetailSegueIdentifier
                                          sender:self
                                        userInfo:@{BreedDetailSegueUserInfoKey : catBreed}];
}

- (void)showPhotosViewControllerFromSourceController:(UIViewController *)sourceController
                                        withCatBreed:(MSACatBreed *)catBreed {
    [sourceController performSegueWithIdentifier:BreedPhotosSegueIdentifier
                                          sender:self
                                        userInfo:@{BreedPhotosSegueUserInfoKey : catBreed}];
}

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController {
    [sourceController performSegueWithIdentifier:BreedWarningSegueIdentifier
                                          sender:self];
}

@end