//
//  UIViewController+Routing.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "UIViewController+Routing.h"
#import <objc/runtime.h>

@implementation UIViewController (Routing)
@dynamic router;

#pragma mark - Associated Objects

- (id<MSARoutingProtocol>)router {
    return objc_getAssociatedObject(self, @selector(router));
}

- (void)setRouter:(id<MSARoutingProtocol>)router {
    objc_setAssociatedObject(self, @selector(router), router, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary *)seguesUserInfoDictionary
{
    return objc_getAssociatedObject(self, @selector(seguesUserInfoDictionary));
}

- (void)setSeguesUserInfoDictionary:(NSDictionary *)dict
{
    objc_setAssociatedObject(self, @selector(seguesUserInfoDictionary), dict, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

#pragma mark - Segue with User Info Implementation

- (void)setUserInfo:(NSDictionary *)userInfo forSegueWithIdentifier:(NSString *)identifier
{
    NSMutableDictionary *dict = [[self seguesUserInfoDictionary]?:@{} mutableCopy];
    if (userInfo) {
        dict[identifier] = userInfo;
    }
    else {
        [dict removeObjectForKey:identifier];
    }
    [self setSeguesUserInfoDictionary:dict];
}

- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender userInfo:(NSDictionary *)userInfo
{
    [self setUserInfo:userInfo forSegueWithIdentifier:identifier];
    [self performSegueWithIdentifier:identifier sender:sender];
}

- (NSDictionary *)segueUserInfo:(UIStoryboardSegue *)segue
{
    NSDictionary *dict = [self seguesUserInfoDictionary];
    return dict[segue.identifier];
}

#pragma mark - Methods Swizzling

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSelector = @selector(prepareForSegue:sender:);
        SEL swizzledSelector = @selector(msa_prepareForSegue:sender:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (void)msa_prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self msa_prepareForSegue:segue sender:sender];
    
    [self.router prepareForSegue:segue sender:sender];
}

@end
