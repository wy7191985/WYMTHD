//
//  WYCatagory.h
//  WYMTHD
//
//  Created by yanyin on 15/9/16.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//  分类选项的模型

#import <Foundation/Foundation.h>

@interface WYCatagory : NSObject
/** 分类的名称 */
@property (nonatomic, copy) NSString *name;
/** 分类的图标 */
@property (nonatomic, copy) NSString *icon;
/** 分类的高亮图标 */
@property (nonatomic, copy) NSString *highlighted_icon;
/** 分类的小图标 */
@property (nonatomic, copy) NSString *small_icon;
/** 分类的高亮小图标 */
@property (nonatomic, copy) NSString *small_highlighted_icon;
/** 分类的从表分类 */
@property (nonatomic, strong) NSArray *subcategories;

@end
