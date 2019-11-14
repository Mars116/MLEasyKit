//
//  MLRarelyUsedHelper.h
//  MLKit
//
//  Created by Mars on 2019/11/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MLRarelyUsedHelper : NSObject

/**
 *替换系统cell 箭头
 *       - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
 *           UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
 * Example  -->  [MLRarelyUsedHelper replaceCellDisclosureIndicator:cell];
 *        }
*/
+ (void)replaceCellDisclosureIndicator:(UITableViewCell *)cell customIndicator:(UIImage * _Nullable )indicatorImg;

@end

NS_ASSUME_NONNULL_END
