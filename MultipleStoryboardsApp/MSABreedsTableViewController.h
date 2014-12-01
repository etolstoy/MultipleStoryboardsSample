//
//  MSABreedsTableViewController.h
//  
//
//  Created by Egor Tolstoy on 11/28/14.
//
//

#import <UIKit/UIKit.h>

@protocol BreedsProtocol;

@interface MSABreedsTableViewController : UITableViewController

@property (strong, nonatomic) id<BreedsProtocol> breedsProvider;

@end
