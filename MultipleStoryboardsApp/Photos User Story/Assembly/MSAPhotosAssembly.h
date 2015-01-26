//
//  MSAPhotosAssembly.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "TyphoonAssembly.h"

@class MSAPhotoGalleryViewController;
@class MSAPhotoViewController;
@protocol MSARoutingProtocol;

@interface MSAPhotosAssembly : TyphoonAssembly

- (MSAPhotoGalleryViewController *)photoGalleryViewController;
- (MSAPhotoViewController *)photoViewController;
- (id<MSARoutingProtocol>)photosRouter;

@end
