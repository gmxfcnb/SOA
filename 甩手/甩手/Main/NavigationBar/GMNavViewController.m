//
//  GMNavViewController.m
//  甩手
//
//  Created by mason on 2019/7/16.
//  Copyright © 2019 soamall. All rights reserved.
//

#import "GMNavViewController.h"

@interface GMNavViewController ()

@end

@implementation GMNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigation];
    // Do any additional setup after loading the view.
}

-(void)setNavigation
{
    self.navigationBar.barTintColor = [UIColor lightGrayColor];//导航栏颜色
    self.navigationBar.tintColor = [UIColor whiteColor];//导航栏UIbarButtonItem的颜色
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};//导航栏标题的颜色，也可以设置字体大小等
    self.navigationBar.translucent = NO;
    //关键点   它的作用是根据UINavigationBar设置，去判定是否添加透明度。
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
