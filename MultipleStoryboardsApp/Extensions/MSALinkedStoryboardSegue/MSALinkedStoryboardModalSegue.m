//
//  MSALinkedStoryboardModalSegue.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/5/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSALinkedStoryboardModalSegue.h"

@implementation MSALinkedStoryboardModalSegue

- (void)perform
{
    UIViewController *source = (UIViewController *)self.sourceViewController;
    
    [source presentViewController:self.destinationViewController
                         animated:YES
                       completion:nil];
}

@end
