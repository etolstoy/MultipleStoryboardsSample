//
//  MSARoutingProtocol.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSARoutingProtocol <NSObject>

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
