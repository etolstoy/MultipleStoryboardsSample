//
//  MSABaseViewController.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MSARouter;

@interface MSABaseViewController : UIViewController

@property (strong, nonatomic) MSARouter *router;

@end