//
//  WYHomeDropDown.m
//  WYMTHD
//
//  Created by yanyin on 15/9/7.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import "WYHomeDropDown.h"

@implementation WYHomeDropDown

+ (instancetype)homeDropDown
{
    return [[[NSBundle mainBundle] loadNibNamed:@"WYHomeDropDown" owner:nil options:nil] lastObject];
}

@end
