//
//  MSABreedsRouter.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSARouter.h"

@class MSACatBreed;
@class MSAPhotosAssembly;
@protocol MSARoutingProtocol;

@interface MSABreedsRouter : MSARouter <MSARoutingProtocol>

@property (strong, nonatomic) MSAPhotosAssembly *photosAssembly;

- (void)showBreedViewControllerFromSourceController:(UIViewController *)sourceController
                                       withCatBreed:(MSACatBreed *)catBreed;

- (void)showPhotosViewControllerFromSourceController:(UIViewController *)sourceController
                                        withCatBreed:(MSACatBreed *)catBreed;

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController;

@end