//
//  MLEasyHelper.m
//  MLEasyKit
//
//  Created by Mars on 2020/8/14.
//

#import "MLEasyHelper.h"

@implementation MLEasyHelper

+ (UIViewController *)rootViewController{
    id<UIApplicationDelegate> appdelegate = [UIApplication sharedApplication].delegate;
    UIViewController *vc = appdelegate.window.rootViewController;
    if ([vc isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabVC = (UITabBarController *)vc;
        vc = tabVC.selectedViewController;
    }
    if ([vc isKindOfClass:[UINavigationController class]]) {
        UINavigationController *nc = (UINavigationController *)vc;
        vc = nc.visibleViewController;
    }
    return vc;
}

+ (UINavigationController *)rootNavViewController{
    return [self rootViewController].navigationController;
}

@end
