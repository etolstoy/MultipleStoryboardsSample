//
//  MSAApplicationAssembly.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAMainAssembly.h"
#import "MSAPhotosAssembly.h"

static NSString *const MSABreedsStoryboardIdentifier = @"Breeds";
static NSString *const MSABestCatStoryboardIdentifier = @"BestCat";
static NSString *const MSASettingsStoryboardIdentifier = @"Settings";

@implementation MSAMainAssembly

- (UITabBarController *)tabBarController {
    return [TyphoonDefinition withClass:[UITabBarController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(viewControllers) with:[self storyboardsInitialViewControllers]];
    }];
}

- (MSAPhotosAssembly *)photosAssembly {
    return [TyphoonDefinition withClass:[MSAPhotosAssembly class]];
}

- (NSArray *)storyboardsInitialViewControllers {
    return @[
             [[UIStoryboard storyboardWithName:MSABreedsStoryboardIdentifier
                                        bundle:[NSBundle mainBundle]] instantiateInitialViewController],
             [[UIStoryboard storyboardWithName:MSABestCatStoryboardIdentifier
                                        bundle:[NSBundle mainBundle]] instantiateInitialViewController],
             [[UIStoryboard storyboardWithName:MSASettingsStoryboardIdentifier
                                        bundle:[NSBundle mainBundle]] instantiateInitialViewController]
             ];
}

@end
