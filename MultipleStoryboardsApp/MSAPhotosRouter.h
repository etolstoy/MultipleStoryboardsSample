//
//  MSAPhotosRouter.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/2/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSAPhotosRouter <NSObject>

- (void)showPhotoViewControllerFromSourceController:(UIViewController *)sourceController
                                            withURL:(NSURL *)imageURL;

@end