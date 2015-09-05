//
//  UIBarButtonItem+Extension.h
//  0623新浪微博
//
//  Created by yanyin on 15/6/24.
//  Copyright (c) 2015年 system . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithImageNamed:(NSString *)name highlightedImage:(NSString *)highlightedName target:(id)target action:(SEL)action;

@end
