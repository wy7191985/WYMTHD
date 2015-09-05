//
//  WYNavigationController.m
//  WYMTHD
//
//  Created by wangyue on 15/9/5.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import "WYNavigationController.h"

@interface WYNavigationController ()

@end

@implementation WYNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 第一次加载控制器器会调用一次
+ (void)initialize
{
    // 1.获得导航栏主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    // 2.设置导航栏背景
    [navBar setBackgroundImage:[UIImage imageNamed:@"bg_navigationBar_normal"] forBarMetrics:UIBarMetricsDefault];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
