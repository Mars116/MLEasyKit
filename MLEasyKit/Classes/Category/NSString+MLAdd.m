//
//  NSString+MLAdd.m
//  MLKit
//
//  Created by Mars on 2019/11/12.
//

#import "NSString+MLAdd.h"

@implementation NSString (MLAdd)

/**
 *拼接
 *Example  -->   [self appendArray:@[@"1",@"2",@"3"] placeholder:@"、"];
 */
- (NSString *)appendArray:(NSArray *)strArray placeholder:(NSString *)placeholder{
    NSMutableString *muText = [NSMutableString string];
    [strArray enumerateObjectsUsingBlock:^(NSString *text, NSUInteger idx, BOOL * _Nonnull stop) {
        [muText appendString:text];
        if (idx < strArray.count-1) {
            [muText appendString:placeholder];
        }
    }];
    
    return muText.copy;
}

/**
 *隐藏手机号
 */
- (NSString *)hidePhoneNumber{
    if (self.length == 11) {
        NSString *hidePhoneNumber = [NSString stringWithFormat:@"%@****%@",[self substringWithRange:NSMakeRange(0, 3)],[self substringWithRange:NSMakeRange(7, 4)]];
        return hidePhoneNumber;
    }
    return self;
}

/**
 *隐藏身份证
 */
- (NSString *)hideIDNumber{
    if (self.length == 15 || self.length == 18) {
        NSString *hideIdNumber = [NSString stringWithFormat:@"%@****%@",[self substringWithRange:NSMakeRange(0, self.length-8)],[self substringWithRange:NSMakeRange(self.length-4, 4)]];
        return hideIdNumber;
    }
    return self;
}

@end
