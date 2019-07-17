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
//导航栏颜色
    self.navigationBar.barTintColor = RGB(242, 242, 242);
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : RGB(0, 191, 255)};//导航栏标题的颜色，也可以设置字体大小等
    self.navigationBar.translucent = NO;
    //关键点   它的作用是根据UINavigationBar设置，去判定是否添加透明度。
}

@end
