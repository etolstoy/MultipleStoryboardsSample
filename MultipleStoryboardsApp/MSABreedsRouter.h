//
//  MSABreedsRouter.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSARouter.h"

@class MSACatBreed;
@protocol MSARoutingProtocol;

@interface MSABreedsRouter : MSARouter <MSARoutingProtocol>

- (void)showBreedViewControllerFromSourceController:(UIViewController *)sourceController
                                       withCatBreed:(MSACatBreed *)catBreed;

@end