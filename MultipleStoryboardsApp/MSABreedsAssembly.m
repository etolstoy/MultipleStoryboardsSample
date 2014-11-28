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
#import "MSABreedsRouter.h"

@implementation MSABreedsAssembly

- (UINavigationController *)breedsNavigationController {
    return [TyphoonDefinition withClass:[UINavigationController class]];
}

- (MSABreedsTableViewController *)breedsTableViewController {
    return [TyphoonDefinition withClass:[MSABreedsTableViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(breedsProvider) with:[MSAOfflineBreedsClient new]];
        [definition injectProperty:@selector(router) with:[self breedsRouter]];
    }];
}

- (MSABreedsRouter *)breedsRouter {
    return [[MSABreedsRouter alloc] initWithNavigationController:[self breedsNavigationController]];
}

@end
