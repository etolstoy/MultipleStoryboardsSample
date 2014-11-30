//
//  MSABreedsTableViewController.h
//  
//
//  Created by Egor Tolstoy on 11/28/14.
//
//

#import <UIKit/UIKit.h>
#import "MSABaseTableViewController.h"

@protocol BreedsProtocol;
@class MSABreedsRouter;

@interface MSABreedsTableViewController : MSABaseTableViewController

@property (strong, nonatomic) id<BreedsProtocol> breedsProvider;

@end
