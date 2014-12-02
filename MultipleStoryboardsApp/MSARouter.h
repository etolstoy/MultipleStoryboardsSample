//
//  MSARouter.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSARouter : NSObject

@property (strong, nonatomic) UINavigationController *mainNavigationController;

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (void)dismissCurrentViewController:(UIViewController *)viewController
                            animated:(BOOL)animated;
@end
