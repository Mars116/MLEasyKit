//
//  MLModel.h
//  MLEasyKit_Example
//
//  Created by Mars on 2019/12/6.
//  Copyright © 2019 Mars116. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MLModel : NSObject

@property (strong, nonatomic) NSString *aUserId;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *info;
@property (nonatomic) BOOL isTest;
@property (strong, nonatomic) NSDictionary *dataDic;
@property (strong, nonatomic) NSArray *dataArray;

@end

NS_ASSUME_NONNULL_END
