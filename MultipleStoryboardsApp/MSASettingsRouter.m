//
//  MSASettingsRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSASettingsRouter.h"
#import "MSARoutingProtocol.h"

@interface MSASettingsRouter ()

@property (strong, nonatomic) UINavigationController *mainNavigationController;

@end

@implementation MSASettingsRouter

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    if (self = [super init]) {
        self.mainNavigationController = navigationController;
    }
    return self;
}

@end
