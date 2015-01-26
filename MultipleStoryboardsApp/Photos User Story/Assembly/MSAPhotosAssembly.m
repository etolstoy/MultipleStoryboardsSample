//
//  MSAPhotosAssembly.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAPhotosAssembly.h"
#import "MSAPhotoGalleryViewController.h"
#import "MSAPhotoViewController.h"
#import "MSAPhotosRouterImplementation.h"
#import "MSARoutingProtocol.h"
#import "UIViewController+Routing.h"
#import "MSAPhotosRouter.h"

@implementation MSAPhotosAssembly

- (MSAPhotoGalleryViewController *)photoGalleryViewController {
    return [TyphoonDefinition withClass:[MSAPhotoGalleryViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(router) with:[self photosRouter]];
    }];
}
- (MSAPhotoViewController *)photoViewController {
    return [TyphoonDefinition withClass:[MSAPhotoViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(router) with:[self photosRouter]];
    }];
}

- (id<MSAPhotosRouter>)photosRouter {
    return [[MSAPhotosRouterImplementation alloc] init];
}

@end
