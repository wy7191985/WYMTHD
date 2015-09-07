//
//  WYHomeViewController.m
//  WYMTHD
//
//  Created by wangyue on 15/9/5.
//  Copyright (c) 2015年 wangyue. All rights reserved.
//

#import "WYHomeViewController.h"
#import "WYHomeTopItem.h"
#import "WYHomeDropDown.h"

@interface WYHomeViewController ()
/** 分类item */
@property (nonatomic, strong) UIBarButtonItem *categoryItem;



@end

@implementation WYHomeViewController

static NSString * const reuseIdentifier = @"Cell";



#pragma mark - 初始化方法
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // 1.设置导航栏右边控件
    [self setupRightBarButtonItems];
    // 2.设置导航栏左边控件
    [self setupLeftBarButtonItems];
}
/**
 *  设置导航栏左边控件
 */
- (void)setupLeftBarButtonItems
{
    // 1.logo
    UIImageView *logoView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_meituan_logo"]];
    UIBarButtonItem *logoItem = [[UIBarButtonItem alloc] initWithCustomView:logoView];
    // 2.分类
    WYHomeTopItem *catecory = [WYHomeTopItem homeTopItem];
    self.categoryItem = [[UIBarButtonItem alloc] initWithCustomView:catecory];
    // 绑定监听方法
    [catecory addTarget:self action:@selector(categotyClick)];
    
    // 3.区域
    WYHomeTopItem *region = [WYHomeTopItem homeTopItem];
    UIBarButtonItem *regionItem = [[UIBarButtonItem alloc] initWithCustomView:region];
    // 4.排序
    WYHomeTopItem *sort = [WYHomeTopItem homeTopItem];
    UIBarButtonItem *sortItem = [[UIBarButtonItem alloc] initWithCustomView:sort];
    self.navigationItem.leftBarButtonItems = @[logoItem, self.categoryItem, regionItem, sortItem];
    
}
/**
 *  分类按钮的监听
 */
- (void)categotyClick
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = [WYHomeDropDown homeDropDown];
    
    UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:vc];
    [popover presentPopoverFromRect:self.categoryItem.customView.bounds inView:self.categoryItem.customView permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

/**
 *  设置导航栏右边控件
 */
- (void)setupRightBarButtonItems
{
    // 1.搜索
    UIBarButtonItem *searchItem = [UIBarButtonItem itemWithImageNamed:@"icon_search" highlightedImage:@"icon_search_highlighted" target:nil action:nil];
    searchItem.customView.width = 100;
    // 2.地图
    UIBarButtonItem *mapItem = [UIBarButtonItem itemWithImageNamed:@"icon_map" highlightedImage:@"icon_map_highlighted" target:nil action:nil];
    mapItem.customView.width = 100;
    self.navigationItem.rightBarButtonItems = @[mapItem, searchItem];
    
    
}



- (instancetype)init
{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    return [self initWithCollectionViewLayout:layout];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete method implementation -- Return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete method implementation -- Return the number of items in the section
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
