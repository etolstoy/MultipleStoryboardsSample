//
//  MSAPhotosRouter.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSARouter.h"

@interface MSAPhotosRouter : MSARouter

- (void)showPhotoViewControllerFromSourceController:(UIViewController *)sourceController
                                            withURL:(NSURL *)imageURL;

@end
