//
//  MSASettingsTableViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSASettingsTableViewController.h"
#import "UIViewController+Routing.h"
#import "MSASettingsRouter.h"

@implementation MSASettingsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (CGFloat)tableView:(UITableView *)tableView
estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        [(MSASettingsRouter *)self.router showWarningViewControllerFromSourceController:self];
    }
}

@end
