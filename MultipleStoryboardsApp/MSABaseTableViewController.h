//
//  MSABaseTableViewController.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 30.11.14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MSARouter;

@interface MSABaseTableViewController : UITableViewController

@property (strong, nonatomic) MSARouter *router;

@end
