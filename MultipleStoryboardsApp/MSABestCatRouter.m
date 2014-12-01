//
//  MSABestCatRouter.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABestCatRouter.h"
#import "UIViewController+Routing.h"
#import "MSAPhotoViewController.h"

static NSString *const PhotoViewSegueIdentifier = @"MSAPhotoViewController@Photos";
static NSString *const PhotoViewSegueUserInfoKey = @"photoViewSegueUserInfo";

@interface MSABestCatRouter ()

@property (strong, nonatomic) UINavigationController *mainNavigationController;

@end

@implementation MSABestCatRouter

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController {
    if (self = [super init]) {
        self.mainNavigationController = navigationController;
    }
    return self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:PhotoViewSegueIdentifier]) {
        NSURL *imageURL = [[segue.sourceViewController segueUserInfo:segue] objectForKey:PhotoViewSegueUserInfoKey];
        
        MSAPhotoViewController *destinationViewController = segue.destinationViewController;
        destinationViewController.photoImageURL = imageURL;
        destinationViewController.router = self;
    }
}

- (void)showPhotoViewControllerFromSourceController:(UIViewController *)sourceController
                                            withURL:(NSURL *)imageURL {
    [sourceController performSegueWithIdentifier:PhotoViewSegueIdentifier
                                          sender:self
                                        userInfo:@{PhotoViewSegueUserInfoKey : imageURL}];
}

@end