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
    
    __weak typeof(self) weakSelfLogin = self;
    self.loginV.btnBlock = ^(NSInteger valueIndex) {
        [weakSelfLogin clickLoginBtn];
    };
    __weak typeof(self) weakSelfRegister = self;
    self.loginV.registerBtnBlock = ^(NSInteger valueIndex) {
        [weakSelfRegister clickRegister];
    };
    // Do any additional setup after loading the view.
}
#pragma mark 登录事件
-(void)clickLoginBtn
{
    NSLog(@"点击了登录");
    
    NSString *username = self.loginV.accText.text;
    NSString *password = self.loginV.passText.text;
    if (username && password) {
        __weak typeof(self) weakSelf = self;
        [AVUser logInWithUsernameInBackground:username password:password block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                NSLog(@"%@,%@",username,password);
                [self dismissViewControllerAnimated:YES completion:nil];
            }else{
                [self showSheet];
            }
        }];
    }
}

- (void)showSheet {
    //显示弹出框列表选择
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"⚠️温馨提示" message:@"用户名或密码错误" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"重新输入" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"返回主页" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alert addAction:yesAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
}
#pragma mark 注册事件
-(void)clickRegister
{
    self.registerVC = [GMRegisterViewController new];
    [self presentViewController:self.registerVC animated:YES completion:nil];
    NSLog(@"点击了注册s按钮");
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
