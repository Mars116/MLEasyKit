//
//  NSObject+MLAdd.m
//  MLKit
//
//  Created by Mars on 2019/11/12.
//

#import "NSObject+MLAdd.h"
#import <YYKit/YYKit.h>

@implementation NSObject (MLAdd)

/**
 *判断2个数据是否数据一致
 */
- (BOOL)isEqualToObject:(NSObject *) obj{
    BOOL isEqual = NO;
    if (!self && !obj) {
        isEqual = YES;
    }else if (self && obj && [[self class] isKindOfClass:[NSString class]] && [[obj class] isKindOfClass:[NSString class]]){
        NSString *selfStr = (NSString *)self;
        NSString *objStr = (NSString *)obj;
        if ([selfStr isEqualToString:objStr]) {
            isEqual = YES;
        }
    }else if ([self.modelToJSONData.md5String isEqualToString:obj.modelToJSONData.md5String]){
        isEqual = YES;
    }
    
    return isEqual;
}

@end
