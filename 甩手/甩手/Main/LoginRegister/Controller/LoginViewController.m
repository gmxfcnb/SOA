//
//  LoginViewController.m
//  甩手
//
//  Created by mason on 2019/7/14.
//  Copyright © 2019 soamall. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *loginTableView;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = GMWhiteColor;
    self.loginV = [[GMLoginV alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.loginV];
    
    self.loginV.btnBlock = ^(NSInteger valueIndex) {
        [self clickLoginBtn];
    };
    // Do any additional setup after loading the view.
}
-(void)clickLoginBtn
{
    NSLog(@"点击了登录");
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)creatLoginTableView
{
    self.loginTableView  = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.loginTableView.delegate = self;
    self.loginTableView.dataSource = self;
    [self.view addSubview:self.loginTableView];
    
}

@end
