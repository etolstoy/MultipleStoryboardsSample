//
//  MSASettingsRouter.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/2/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSARoutingProtocol;

@protocol MSASettingsRouter <MSARoutingProtocol>

- (void)showWarningViewControllerFromSourceController:(UIViewController *)sourceController;

@end