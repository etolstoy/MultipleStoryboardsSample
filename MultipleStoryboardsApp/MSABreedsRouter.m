//
//  MSABreedsRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABreedsRouter.h"
#import "MSARoutingProtocol.h"
#import "UIViewController+Routing.h"

static NSString *const BreedDetailSegueIdentifier = @"breedDetailSegue";
static NSString *const BreedDetailSegueUserInfoKey = @"breedDetailSegueUserInfo";

@class MSACatBreed;

@interface MSABreedsRouter ()

@property (strong, nonatomic) UINavigationController *mainNavigationController;

@end

@implementation MSABreedsRouter

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    if (self = [super init]) {
        self.mainNavigationController = navigationController;
    }
    return self;
}

- (void)showBreedViewControllerFromSourceController:(UIViewController *)sourceController
                                       withCatBreed:(MSACatBreed *)catBreed {
    [sourceController performSegueWithIdentifier:BreedDetailSegueIdentifier
                                          sender:self
                                        userInfo:@{BreedDetailSegueUserInfoKey : catBreed}];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MSACatBreed *catBreed = [[segue.sourceViewController segueUserInfo:segue] objectForKey:BreedDetailSegueUserInfoKey];
    
}

@end