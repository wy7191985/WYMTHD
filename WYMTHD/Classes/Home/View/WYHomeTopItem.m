//
//  WYHomeTopItem.m
//  WYMTHD
//
//  Created by yanyin on 15/9/7.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import "WYHomeTopItem.h"
@interface WYHomeTopItem ()

@property (weak, nonatomic) IBOutlet UIButton *iconButton;


@end
@implementation WYHomeTopItem

+ (instancetype)homeTopItem
{
    return [[[NSBundle mainBundle] loadNibNamed:@"WYHomeTopItem" owner:nil options:nil] lastObject];
}

// 不让子控件受自动布局影响
- (void)awakeFromNib
{
    self.autoresizingMask = UIViewAutoresizingNone;
}



// 按钮的监听方法
- (void)addTarget:(id)target action:(SEL)action
{
    [self.iconButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
}

@end
