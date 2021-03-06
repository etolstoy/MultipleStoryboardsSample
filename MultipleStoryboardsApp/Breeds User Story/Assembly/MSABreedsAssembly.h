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

@interface MSABreedsAssembly : TyphoonAssembly

- (MSABreedsTableViewController *)breedsTableViewController;
- (MSABreedsDetailViewController *)breedsDetailViewController;

@end
