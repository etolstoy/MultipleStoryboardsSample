//
//  MSASettingsAssembly.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSASettingsAssembly.h"
#import "MSASettingsNavigationController.h"
#import "MSASettingsTableViewController.h"
#import "MSASettingsRouterImplementation.h"
#import "MSAMainAssembly.h"
#import "MSASettingsRouter.h"
#import "UIViewController+Routing.h"

@interface MSASettingsAssembly ()

@property(nonatomic, strong, readonly) MSAMainAssembly *mainAssembly;

@end

@implementation MSASettingsAssembly

- (MSASettingsNavigationController *)settingsNavigationController {
    return [TyphoonDefinition withClass:[MSASettingsNavigationController class]];
}

- (MSASettingsTableViewController *)settingsTableViewController {
    return [TyphoonDefinition withClass:[MSASettingsTableViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(router) with:[self settingsRouter]];
    }];
}

- (id<MSASettingsRouter>)settingsRouter {
    return [TyphoonDefinition withClass:[MSASettingsRouterImplementation class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithNavigationController:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self settingsNavigationController]];
        }];
        [definition injectProperty:@selector(photosAssembly) with:[_mainAssembly photosAssembly]];
        
    }];
}

@end
