//
//  UIViewController+Routing.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSARoutingProtocol.h"

/**
 *  Блок, используемый для конфигурации segue в методе prepareForSegue:
 *
 *  @param segue (UIStoryboardSegue *)
 */
typedef void (^MSAPreparationBlock)(UIStoryboardSegue *segue);

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
 *  @param block      (^MSAPreparationBlock)(UIStoryboardSegue *segue)
 */
- (void)performSegueWithIdentifier:(NSString *)identifier
                            sender:(id)sender
                  preparationBlock:(MSAPreparationBlock)block;

/**
 *  Метод, отдающий блок для конкретной segue
 *
 *  @param segue (UIStoryboardSegue *)
 *
 *  @return (^MSAPreparationBlock)(UIStoryboardSegue *segue)
 */
- (MSAPreparationBlock)preparationBlockForSegue:(UIStoryboardSegue *)segue;

@end
