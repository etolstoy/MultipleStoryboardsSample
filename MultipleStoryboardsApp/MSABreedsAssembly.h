//
//  MSABreedsAssembly.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "TyphoonAssembly.h"

@class MSABreedsTableViewController;
@class MSABreedsDetailViewController;
@class MSABreedsNavigationController;

@interface MSABreedsAssembly : TyphoonAssembly

- (MSABreedsNavigationController *)breedsNavigationController;
- (MSABreedsTableViewController *)breedsTableViewController;
- (MSABreedsDetailViewController *)breedsDetailViewController;

@end
