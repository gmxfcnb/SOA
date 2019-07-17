//
//  GMTabViewController.m
//  甩手
//
//  Created by mason on 2019/7/16.
//  Copyright © 2019 soamall. All rights reserved.
//

#import "GMTabViewController.h"
#import "GMHomeViewController.h"
#import "GMClassifyViewController.h"
#import "GMShoopCarViewController.h"
#import "GMSetViewController.h"
//导航控制器
#import "GMNavViewController.h"
@interface GMTabViewController ()

@end

@implementation GMTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    //安全区域背景View
    [self creatView];
    [self addChildViewController];
    // Do any additional setup after loading the view.
}

-(void)addChildViewController
{
    [self addChlidVC:[GMHomeViewController new] andTitle:@"首页" andImageName:@"" andSelectImage:@""];
    [self addChlidVC:[GMClassifyViewController new] andTitle:@"分类" andImageName:@"" andSelectImage:@""];
    [self addChlidVC: [GMShoopCarViewController new] andTitle:@"购物车" andImageName:@"" andSelectImage:@""];
    [self addChlidVC:[GMSetViewController new] andTitle:@"我的" andImageName:@"wo" andSelectImage:@"wo-2"];
}

-(void)creatView
{
    UIView *bgView = [[UIView alloc]init];
    self.tabBar.frame = CGRectMake(0, 0, MScreenW, 89);
    //tabbar 换成 自定义View
    bgView.frame = self.tabBar.frame;
    bgView.backgroundColor = RGB(242, 242, 242);
    [[UITabBar appearance] insertSubview:bgView atIndex:0];
}

-(void)addChlidVC:(UIViewController *)addChlidVC andTitle:(NSString *)title andImageName:(NSString *)imgName andSelectImage:(NSString *)selectImage
{   addChlidVC.title = title;
    addChlidVC.tabBarItem.image = [UIImage imageNamed:imgName];
    addChlidVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    GMNavViewController *navVC = [[GMNavViewController alloc]initWithRootViewController:addChlidVC];
    [self addChildViewController:navVC];
    
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
