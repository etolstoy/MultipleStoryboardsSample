//
//  MSABreedsRouterProtocol.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/2/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSABreedsRouter <NSObject>

- (void)showBreedViewControllerFromSourceController:(UIViewController *)sourceController
                                       withCatBreed:(MSACatBreed *)catBreed;

- (void)showPhotosViewControllerFromSourceController:(UIViewController *)sourceController
                                        withCatBreed:(MSACatBreed *)catBreed;

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController;

@end
