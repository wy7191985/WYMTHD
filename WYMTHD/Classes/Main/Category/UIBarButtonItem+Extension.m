//
//  UIBarButtonItem+Extension.m
//  0623新浪微博
//
//  Created by yanyin on 15/6/24.
//  Copyright (c) 2015年 system . All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithImageNamed:(NSString *)name highlightedImage:(NSString *)highlightedName target:(id)target action:(SEL)action
{
    UIButton *button = [[UIButton alloc] init];
    [button setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlightedName] forState:UIControlStateHighlighted];
    //设置尺寸
    CGRect tmpF = button.frame;
    tmpF.size = button.currentImage.size;
    button.frame = tmpF;
    
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
    
}

@end
