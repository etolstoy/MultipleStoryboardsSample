//
//  MSABreedsTableViewController.h
//  
//
//  Created by Egor Tolstoy on 11/28/14.
//
//

#import <UIKit/UIKit.h>

@protocol MSABreedsClient;

@interface MSABreedsTableViewController : UITableViewController

@property (strong, nonatomic) id<MSABreedsClient> breedsProvider;

@end
