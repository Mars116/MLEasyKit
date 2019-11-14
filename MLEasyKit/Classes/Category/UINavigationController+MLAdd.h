//
//  UINavigationController+MLAdd.h
//  MLKit
//
//  Created by Mars on 2019/11/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (MLAdd)

/**
 *根据要返回的过渡页面前一个页面跳转到指定页面 然后pop中间过渡页的上一个页面
 */
- (void)pushViewController:(UIViewController *)pushVC andPopToLastViewControllerByName:(NSString *)className animated:(BOOL)animated;

/**
 *跳转到指定页面 然后pop中间过渡页的上一个页面
 */
- (void)pushViewController:(UIViewController *)pushVC andPopToLastViewController:(UIViewController *)popVC animated:(BOOL)animated;

/**
 *删除UINavigationController 中的其中一个 VC
 */
- (void)removeViewControllerByName:(NSString *)className;

/**
 *删除UINavigationController 中的其中一个 VC
 */
- (void)removeViewController:(UIViewController *)removeVC;

/**
 *获取其中一个 指定VC
 */
- (UIViewController *)getViewControllerByName:(NSString *)className;

/**
 *获取其中一组指定ClassName  VC
 */
- (NSArray<UIViewController *> *)getViewControllersByName:(NSString *)className;

@end

NS_ASSUME_NONNULL_END
