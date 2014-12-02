//
//  MSABestCatAssembly.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABestCatAssembly.h"
#import "MSABestCatViewController.h"
#import "UIViewController+Routing.h"
#import "MSABestCatRouterImplementation.h"
#import "MSAPhotosAssembly.h"
#import "MSAMainAssembly.h"
#import "MSABestCatNavigationController.h"
#import "MSABestCatRouter.h"

@interface MSABestCatAssembly ()

@property(nonatomic, strong, readonly) MSAMainAssembly *mainAssembly;

@end

@implementation MSABestCatAssembly

- (MSABestCatNavigationController *)bestCatNavigationController {
    return [TyphoonDefinition withClass:[MSABestCatNavigationController class]];
}

- (MSABestCatViewController *)bestCatViewController {
    return [TyphoonDefinition withClass:[MSABestCatViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(router) with:[self bestCatRouter]];
        [definition injectProperty:@selector(bestCatInformation) with:[self bestCatInformation]];
        [definition injectProperty:@selector(bestCatName) with:[self bestCatName]];
        [definition injectProperty:@selector(bestCatImageURL) with:[self bestCatImageURL]];
    }];
}

- (id<MSABestCatRouter>)bestCatRouter {
    return [TyphoonDefinition withClass:[MSABestCatRouterImplementation class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithNavigationController:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self bestCatNavigationController]];
        }];
        [definition injectProperty:@selector(photosAssembly) with:[_mainAssembly photosAssembly]];
    }];
}

- (NSString *)bestCatName {
    return @"Яшка";
}

- (NSString *)bestCatInformation {
    return @"Мощный и шикарный кот.";
}

- (NSURL *)bestCatImageURL {
    return [[NSBundle mainBundle] URLForResource:@"best-cat"
                                   withExtension:@"png"];
}

@end
