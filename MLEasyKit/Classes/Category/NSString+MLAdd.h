//
//  NSString+MLAdd.h
//  MLKit
//
//  Created by Mars on 2019/11/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (MLAdd)

/**
 *拼接
 *Example  -->   [self appendArray:@[@"1",@"2",@"3"] placeholder:@"、"];
 */
- (NSString *)appendArray:(NSArray *)strArray placeholder:(NSString *)placeholder;

/**
 *隐藏手机号
 */
- (NSString *)hidePhoneNumber;

/**
 *隐藏身份证
 */
- (NSString *)hideIDNumber;

@end

NS_ASSUME_NONNULL_END
