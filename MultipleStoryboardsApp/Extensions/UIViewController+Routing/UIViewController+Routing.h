//
//  UIViewController+Routing.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSARoutingProtocol.h"

@interface UIViewController (Routing)

/**
 *  Абстрактный роутер, в который прокидывается метод prepareForSegue:
 */
@property (nonatomic, strong) id<MSARoutingProtocol> router;

/**
 *  Метод позволяет помимо стандарных identifier и sender передавать словарь с собственной информацией.
 *
 *  @param identifier Identifier вызываемой segue
 *  @param sender     Sender
 *  @param userInfo   Словарь, содержащий информацию, которую нужно передать в prepareForSegue:
 */
- (void)performSegueWithIdentifier:(NSString *)identifier
                            sender:(id)sender
                          userInfo:(NSDictionary *)userInfo;

/**
 *  Метод, позволяющий получить словарь, переданный с конкретной segue.
 *
 *  @param segue Segue, чей userInfo нужно получить
 *
 *  @return Словарь с информацией, переданной с segue.
 */
- (NSDictionary *)segueUserInfo:(UIStoryboardSegue *)segue;

@end
