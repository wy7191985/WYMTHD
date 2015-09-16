//
//  WYHomeDropDown.m
//  WYMTHD
//
//  Created by yanyin on 15/9/7.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import "WYHomeDropDown.h"
#import "WYCatagory.h"
#import "WYDropDownMainCell.h"
#import "WYDropDownSubCell.h"

@interface WYHomeDropDown () <UITableViewDataSource, UITableViewDelegate>
/** 主表 */
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
/** 从表 */
@property (weak, nonatomic) IBOutlet UITableView *subTableView;
/** 当前选中的主表cell的模型 */
@property (nonatomic, strong) WYCatagory *currentSelectedCategory;


@end

@implementation WYHomeDropDown
/**
 * 快速创建菜单的方法
 */
+ (instancetype)homeDropDown
{
    return [[[NSBundle mainBundle] loadNibNamed:@"WYHomeDropDown" owner:nil options:nil] lastObject];
}

// 不让子控件受自动布局影响
- (void)awakeFromNib
{
    self.autoresizingMask = UIViewAutoresizingNone;
}

#pragma mark - UITableViewDataSource
/**
 *  设置tableVIew行数
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.mainTableView) { // 是主表
        return self.catagories.count;
    } else { // 是副表
        return self.currentSelectedCategory.subcategories.count;
    }
    
}
/**
 *  设置cell的显示
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = nil;
    if (tableView == self.mainTableView) { // 是主表
        cell = [WYDropDownMainCell dropDownMainCellWith:tableView];
        WYCatagory *category = self.catagories[indexPath.row];
        cell.textLabel.text = category.name;
        if (category.subcategories) { //有子分类
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        } else { // 没有子分类(cell的重用，必须写)
            cell.accessoryType = UITableViewCellAccessoryNone;
        }
    } else { // 是从表
        
        cell = [WYDropDownSubCell dropDownSubCellWith:tableView];
        cell.textLabel.text = self.currentSelectedCategory.subcategories[indexPath.row];
        
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate
/**
 *  监听cell的点击
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.mainTableView) {  // 是主表
        // 设置当前选中的主表的cell
        self.currentSelectedCategory = self.catagories[indexPath.row];
        [self.subTableView reloadData];
    }
    
}

@end
