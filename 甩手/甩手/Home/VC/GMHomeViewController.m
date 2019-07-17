//
//  GMHomeViewController.m
//  甩手
//
//  Created by mason on 2019/7/16.
//  Copyright © 2019 soamall. All rights reserved.
//

#import "GMHomeViewController.h"

@interface GMHomeViewController ()

@end

@implementation GMHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginView = [[GMLoginView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.loginView.backgroundColor  = GMWhiteColor;
    __weak typeof(self) weakSelf = self;
    self.loginView.btnBlock = ^(NSInteger tagIndex) {
        [weakSelf presentViewController];
    };
    [self.view addSubview:self.loginView];
    self.navigationController.navigationBarHidden = YES;
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
//    btn.frame = CGRectMake(100, 100, 100, 100);
//    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}

-(void)presentViewController
{
    LoginViewController *login = [[LoginViewController alloc]init];;
    [self presentViewController:login animated:YES completion:nil];
}

//-(void)click
//{
//    GMxxxViewController *xx = [GMxxxViewController new];
//    [xx setHidesBottomBarWhenPushed:YES];
//    [self. navigationController pushViewController:xx animated:YES];
//
//    NSLog(@"xxx");
//}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
