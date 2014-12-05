//
//  MSARoutingProtocol.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSARoutingProtocol <NSObject>

- (void)dismissCurrentViewController:(UIViewController *)viewController
                            animated:(BOOL)animated;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
