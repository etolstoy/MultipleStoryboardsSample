//
//  MSABreedsAssembly.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABreedsAssembly.h"
#import "MSABreedsTableViewController.h"
#import "MSAOfflineBreedsClient.h"
#import "MSAJsonGeneratorBreedsClient.h"
#import "MSABreedsRouter.h"
#import "MSARoutingProtocol.h"
#import "UIViewController+Routing.h"
#import "MSABreedsDetailViewController.h"
#import "MSAPhotosAssembly.h"
#import "MSAMainAssembly.h"
#import "MSABreedsNavigationController.h"

@interface MSABreedsAssembly ()

@property(nonatomic, strong, readonly) MSAMainAssembly *mainAssembly;

@end

@implementation MSABreedsAssembly

- (MSABreedsNavigationController *)breedsNavigationController {
    return [TyphoonDefinition withClass:[MSABreedsNavigationController class]];
}

- (MSABreedsTableViewController *)breedsTableViewController {
    return [TyphoonDefinition withClass:[MSABreedsTableViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(breedsProvider) with:[MSAJsonGeneratorBreedsClient new]];
        [definition injectProperty:@selector(router) with:[self breedsRouter]];
    }];
}

- (MSABreedsDetailViewController *)breedsDetailViewController {
    return [TyphoonDefinition withClass:[MSABreedsDetailViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(router) with:[self breedsRouter]];
    }];
}

- (MSABreedsRouter *)breedsRouter {
    return [TyphoonDefinition withClass:[MSABreedsRouter class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithNavigationController:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self breedsNavigationController]];
        }];
        [definition injectProperty:@selector(photosAssembly) with:[_mainAssembly photosAssembly]];
    }];
}

//- (MSAPhotosAssembly *)photosAssembly {
//    return [TyphoonDefinition withClass:[MSAPhotosAssembly class]];
//}

@end
