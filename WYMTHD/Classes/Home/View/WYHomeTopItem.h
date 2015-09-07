//
//  WYHomeTopItem.h
//  WYMTHD
//
//  Created by yanyin on 15/9/7.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYHomeTopItem : UIView


+ (instancetype)homeTopItem;

// 监听按钮点击的方法
- (void)addTarget:(id)target action:(SEL)action;



@end
