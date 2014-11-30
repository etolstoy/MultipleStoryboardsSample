//
//  MSABreedsRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABreedsRouter.h"

static NSString *const BreedDetailSegueIdentifier = @"breedDetailSegue";

@class MSACatBreed;

@implementation MSABreedsRouter

- (void)showBreedViewControllerFromSourceController:(UIViewController *)sourceController
                                       withCatBreed:(MSACatBreed *)catBreed {
    [sourceController performSegueWithIdentifier:BreedDetailSegueIdentifier
                                          sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    
    
}

@end