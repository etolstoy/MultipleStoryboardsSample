//
//  MSASettingsTableViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSASettingsTableViewController.h"
#import "UIViewController+Routing.h"
#import "MSASettingsRouterImplementation.h"
#import "MSASettingsRouter.h"

@interface MSASettingsTableViewController ()

@property (strong, nonatomic) id<MSASettingsRouter> router;

@end

@implementation MSASettingsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        [self.router showWarningViewControllerFromSourceController:self];
    }
}

@end