//
//  MSAPhotosAssembly.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAPhotosAssembly.h"
#import "MSAPhotoGalleryViewController.h"
#import "MSAPhotosRouterImplementation.h"
#import "MSARoutingProtocol.h"
#import "UIViewController+Routing.h"
#import "MSAPhotosRouter.h"

@implementation MSAPhotosAssembly

- (id<MSAPhotosRouter>)photosRouterWithNavigationController:(UINavigationController *)navigationController {
    return [[MSAPhotosRouterImplementation alloc] init];
}

@end
