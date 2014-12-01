//
//  MSAPhotosAssembly.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAPhotosAssembly.h"
#import "MSAPhotoGalleryViewController.h"
#import "MSAPhotosRouter.h"
#import "MSARoutingProtocol.h"
#import "UIViewController+Routing.h"

@implementation MSAPhotosAssembly

- (MSAPhotosRouter *)photosRouterWithNavigationController:(UINavigationController *)navigationController {
    return [[MSAPhotosRouter alloc] initWithNavigationController:navigationController];
}

@end
