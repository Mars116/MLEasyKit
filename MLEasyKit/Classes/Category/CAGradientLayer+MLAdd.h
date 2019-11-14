//
//  CAGradientLayer+MLAdd.h
//  MLKit
//
//  Created by Mars on 2019/11/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CAGradientLayer (MLAdd)

/**
 *渐变色
 */
- (instancetype)initGradient:(CGRect) bounds colors:(NSArray<UIColor *> *_Nullable)colors locations:(NSArray<NSNumber *> *_Nullable)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

@end

NS_ASSUME_NONNULL_END
