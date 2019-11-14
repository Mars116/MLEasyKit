//
//  UINavigationController+MLAdd.m
//  MLKit
//
//  Created by Mars on 2019/11/12.
//

#import "UINavigationController+MLAdd.h"
#import <YYKit/YYKit.h>

@implementation UINavigationController (MLAdd)

/**
 *根据要返回的过渡页面前一个页面跳转到指定页面 然后pop中间过渡页的上一个页面
 */
- (void)pushViewController:(UIViewController *)pushVC andPopToLastViewControllerByName:(NSString *)className animated:(BOOL)animated{
    [self pushViewController:pushVC animated:animated];
    if ([className isNotBlank]) {
        NSMutableArray *vcs = self.viewControllers.mutableCopy;
        [self.viewControllers enumerateObjectsUsingBlock:^(UIViewController*  _Nonnull vc, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([vc.className isEqualToString:className]) {
                [vcs removeObjectsInRange:NSMakeRange(idx, self.viewControllers.count-1)];
                self.viewControllers = vcs.copy;
                *stop = YES;
            }
        }];
    }
}

/**
 *跳转到指定页面 然后pop中间过渡页的上一个页面
 */
- (void)pushViewController:(UIViewController *)pushVC andPopToLastViewController:(UIViewController *)popVC animated:(BOOL)animated{
    [self pushViewController:pushVC animated:animated];
    if (popVC) {
        NSMutableArray *vcs = self.viewControllers.mutableCopy;
        [self.viewControllers enumerateObjectsUsingBlock:^(UIViewController*  _Nonnull vc, NSUInteger idx, BOOL * _Nonnull stop) {
            if (self == popVC) {
                [vcs removeObjectsInRange:NSMakeRange(idx, self.viewControllers.count-1)];
                self.viewControllers = vcs.copy;
                *stop = YES;
            }
        }];
    }
}

/**
 *删除UINavigationController 中的其中一个 VC
 */
- (void)removeViewControllerByName:(NSString *)className{
    if ([className isNotBlank]) {
        NSMutableArray *vcs = self.viewControllers.mutableCopy;
        [self.viewControllers enumerateObjectsUsingBlock:^(UIViewController*  _Nonnull vc, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([vc.className isEqualToString:className]) {
                [vcs removeObjectAtIndex:idx];
                self.viewControllers = vcs.copy;
                *stop = YES;
            }
        }];
    }
}

/**
 *删除UINavigationController 中的其中一个 VC
 */
- (void)removeViewController:(UIViewController *)removeVC{
    if (removeVC) {
        NSMutableArray *vcs = self.viewControllers.mutableCopy;
        [self.viewControllers enumerateObjectsUsingBlock:^(UIViewController*  _Nonnull vc, NSUInteger idx, BOOL * _Nonnull stop) {
            if (self == removeVC) {
                [vcs removeObjectAtIndex:idx];
                self.viewControllers = vcs.copy;
                *stop = YES;
            }
        }];
    }
}

/**
 *获取其中一个 指定VC
 */
- (UIViewController *)getViewControllerByName:(NSString *)className{
    __block UIViewController *getVC = nil;
    if ([className isNotBlank]) {
        [self.viewControllers enumerateObjectsUsingBlock:^(UIViewController*  _Nonnull vc, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([vc.className isEqualToString:className]) {
                getVC = vc;
                *stop = YES;
            }
        }];
    }
    
    return getVC;
}

/**
 *获取其中一组指定ClassName  VC
 */
- (NSArray<UIViewController *> *)getViewControllersByName:(NSString *)className{
    NSMutableArray *vcs = [NSMutableArray array];
    if ([className isNotBlank]) {
        [self.viewControllers enumerateObjectsUsingBlock:^(UIViewController*  _Nonnull vc, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([vc.className isEqualToString:className]) {
                [vcs addObject:vc];
            }
        }];
    }
    
    return vcs.copy;
}

@end
