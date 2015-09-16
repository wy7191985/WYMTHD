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
    self.view = [WYHomeDropDown homeDropDown];
    // 2.加载分类的plist数据
    NSArray *array = [WYCatagory objectArrayWithFilename:@"categories.plist"];
    
    
}




@end
