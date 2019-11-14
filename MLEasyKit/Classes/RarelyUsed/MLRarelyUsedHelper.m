//
//  MLRarelyUsedHelper.m
//  MLKit
//
//  Created by Mars on 2019/11/11.
//

#import "MLRarelyUsedHelper.h"
#import <YYKit/UIView+YYAdd.h>

@implementation MLRarelyUsedHelper

/**
 *替换系统cell 箭头
 *       - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
 *           UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
 * Example  -->  [MLRarelyUsedHelper replaceCellDisclosureIndicator:cell];
 *        }
*/
+ (void)replaceCellDisclosureIndicator:(UITableViewCell *)cell customIndicator:(UIImage * _Nullable )indicatorImg{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [cell.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull subview, NSUInteger idx, BOOL * _Nonnull stop) {
            if([subview isKindOfClass:[UIButton class]]){
                __block UIButton *indicatorBtn = (UIButton *)subview;
                [indicatorBtn.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull indicatorBtnSubview, NSUInteger idx, BOOL * _Nonnull stop) {
                
                    if([indicatorBtnSubview isKindOfClass:[UIImageView class]]){
                        [indicatorBtn removeAllSubviews];
                        UIImageView *indicatorImgView = [[UIImageView alloc] initWithImage:indicatorImg];
                        indicatorImgView.contentMode = UIViewContentModeCenter;
                        [indicatorBtn addSubview:indicatorImgView];
                    }
                }];
            }
        }];
    });
}

@end
