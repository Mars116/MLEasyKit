//
//  CAGradientLayer+MLAdd.m
//  MLKit
//
//  Created by Mars on 2019/11/12.
//

#import <UIKit/UIKit.h>

@implementation CAGradientLayer (MLAdd)

/**
 * 渐变色
 */
- (instancetype)initGradient:(CGRect) bounds colors:(NSArray<UIColor *> *_Nullable)colors locations:(NSArray<NSNumber *> *_Nullable)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint
{
    self = [super init];
    if (self) {
        self.frame = bounds;
        NSMutableArray *muColors = [NSMutableArray array];
        for (UIColor *color in colors) {
            [muColors addObject:(__bridge id)color.CGColor];
        }
        self.colors = [muColors copy];
        self.startPoint = startPoint;
        self.endPoint = endPoint;
        self.locations = locations;
    }
    return self;
}

@end
