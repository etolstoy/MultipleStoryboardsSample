//
//  MSASettingsRouter.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSARouter.h"

@class MSAPhotosAssembly;

@interface MSASettingsRouter : MSARouter

@property (strong, nonatomic) MSAPhotosAssembly *photosAssembly;

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController;

@end
