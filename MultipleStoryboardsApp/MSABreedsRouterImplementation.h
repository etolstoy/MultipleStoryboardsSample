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

@interface MSABreedsRouterImplementation : MSARouter

@property (strong, nonatomic) MSAPhotosAssembly *photosAssembly;

@end