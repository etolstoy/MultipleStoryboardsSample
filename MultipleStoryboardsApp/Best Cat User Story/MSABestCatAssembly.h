//
//  MSABestCatAssembly.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "TyphoonAssembly.h"

@class MSABestCatNavigationController;
@class MSABestCatViewController;

@interface MSABestCatAssembly : TyphoonAssembly

- (MSABestCatNavigationController *)bestCatNavigationController;
- (MSABestCatViewController *)bestCatViewController;

@end
