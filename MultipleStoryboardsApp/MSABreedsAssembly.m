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

@implementation MSABreedsAssembly

- (MSABreedsTableViewController *)breedsTableViewController {
    return [TyphoonDefinition withClass:[MSABreedsTableViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(breedsProvider) with:[MSAOfflineBreedsClient new]];
    }];
}

@end
