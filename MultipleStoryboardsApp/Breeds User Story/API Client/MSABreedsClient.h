//
//  BreedsProtocol.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSABreedsClient <NSObject>

- (void)fetchBreedsWithCompletion:(void (^)(NSArray *result, NSError *error))completion;

@end