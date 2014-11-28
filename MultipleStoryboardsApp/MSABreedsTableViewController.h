//
//  MSABreedsTableViewController.h
//  
//
//  Created by Egor Tolstoy on 11/28/14.
//
//

#import <UIKit/UIKit.h>

@protocol BreedsProtocol;
@class MSABreedsRouter;

@interface MSABreedsTableViewController : UITableViewController

@property (strong, nonatomic) id<BreedsProtocol> breedsProvider;
//@property (strong, nonatomic) MSABreedsRouter *breedsRouter;

@end
