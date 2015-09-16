//
//  WYHomeDropDown.h
//  WYMTHD
//
//  Created by yanyin on 15/9/7.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//  下拉菜单

#import <UIKit/UIKit.h>

@interface WYHomeDropDown : UIView

/** 分类的模型数组 */
@property (nonatomic, strong) NSArray *catagories;

/**
 * 快速创建菜单的方法
 */
+ (instancetype)homeDropDown;

@end
