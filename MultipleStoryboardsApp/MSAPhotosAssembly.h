//
//  MSAPhotosAssembly.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "TyphoonAssembly.h"

@class MSAPhotoGalleryViewController;
@class MSAPhotosRouter;
@protocol MSARoutingProtocol;

@interface MSAPhotosAssembly : TyphoonAssembly

- (id<MSARoutingProtocol>)photosRouterWithNavigationController:(UINavigationController *)navigationController;

@end
