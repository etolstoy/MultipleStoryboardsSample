//
//  MSATabBarController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSATabBarController.h"

@interface MSATabBarController ()

@end

@implementation MSATabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.viewControllers = @[
                             [[UIStoryboard storyboardWithName:@"Breeds" bundle:[NSBundle mainBundle]] instantiateInitialViewController],
                             [[UIStoryboard storyboardWithName:@"BestCat" bundle:[NSBundle mainBundle]] instantiateInitialViewController],
                             [[UIStoryboard storyboardWithName:@"Settings" bundle:[NSBundle mainBundle]] instantiateInitialViewController]
                             ];
}


@end
