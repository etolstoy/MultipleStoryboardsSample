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

@class MSACatBreed;

@interface MSABreedsRouterImplementation () <MSABreedsRouter>

@end

@implementation MSABreedsRouterImplementation

#pragma mark - MSARoutingProtocol Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:self];
}

- (void)dismissCurrentViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super dismissCurrentViewController:viewController animated:animated];
}

#pragma mark - Navigation Methods

- (void)showBreedViewControllerFromSourceController:(UIViewController *)sourceController
                                       withCatBreed:(MSACatBreed *)catBreed {
    __block typeof(catBreed) blockCatBreed = catBreed;
    __weak typeof(self) weakSelf = self;
    
    MSAPreparationBlock block = ^void(UIStoryboardSegue *segue) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        MSABreedsDetailViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.catBreed = blockCatBreed;
        destinationViewController.router = strongSelf;
    };
    
    [sourceController performSegueWithIdentifier:sBreedDetailSegue sender:self preparationBlock:block];
}

- (void)showPhotosViewControllerFromSourceController:(UIViewController *)sourceController
                                        withCatBreed:(MSACatBreed *)catBreed {
    __block typeof(catBreed) blockCatBreed = catBreed;
    __block typeof(self.photosAssembly) blockPhotosAssembly = self.photosAssembly;
    
    MSAPreparationBlock block = ^void(UIStoryboardSegue *segue) {
        MSAPhotoGalleryViewController *destinationViewController = segue.destinationViewController;

        destinationViewController.catBreed = blockCatBreed;
        destinationViewController.router = [blockPhotosAssembly photosRouter];
    };
    
    [sourceController performSegueWithIdentifier:sMSAPhotoGalleryViewController_Photos sender:self preparationBlock:block];
}

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