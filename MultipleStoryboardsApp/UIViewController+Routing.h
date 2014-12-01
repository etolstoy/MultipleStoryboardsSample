//
//  UIViewController+Routing.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSARoutingProtocol.h"

@interface UIViewController (Routing)

@property (nonatomic, strong) id<MSARoutingProtocol> router;

@end
