//
//  WYDropDownSubCell.m
//  WYMTHD
//
//  Created by wangyue on 15/9/16.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import "WYDropDownSubCell.h"

@implementation WYDropDownSubCell

+ (instancetype)dropDownSubCellWith:(UITableView *)tableView
{
    static NSString *ID = @"sub";
    WYDropDownSubCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[WYDropDownSubCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}
/**
 *  设置属性
 */
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 设置cell的背景和高亮图片
        self.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_dropdown_rightpart"]];
        self.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_dropdown_right_selected"]];
    }
    return self;
}
@end
