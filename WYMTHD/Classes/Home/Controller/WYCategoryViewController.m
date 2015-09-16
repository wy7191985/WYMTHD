//
//  WYCategoryViewController.m
//  WYMTHD
//
//  Created by yanyin on 15/9/16.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import "WYCategoryViewController.h"
#import "WYHomeDropDown.h"
#import "MJExtension.h"
#import "WYCatagory.h"

@interface WYCategoryViewController ()

@end

@implementation WYCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1.添加下拉菜单到控制器view上
    WYHomeDropDown *dropDown = [WYHomeDropDown homeDropDown];
    [self.view addSubview:dropDown];
    // 2.加载分类的plist数据,传值给菜单
    dropDown.catagories = [WYCatagory objectArrayWithFilename:@"categories.plist"];
    // 3.设置控制器view在popover中的尺寸
    self.preferredContentSize = dropDown.frame.size;
    
    
}




@end
