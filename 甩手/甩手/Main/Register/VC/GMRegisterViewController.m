//
//  GMRegisterViewController.m
//  甩手
//
//  Created by mason on 2019/7/17.
//  Copyright © 2019 soamall. All rights reserved.
//

#import "GMRegisterViewController.h"

@interface GMRegisterViewController ()

@end

@implementation GMRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = GMlightGrayColor;
    self.registerV = [[GMRegisterV alloc]initWithFrame:[UIScreen mainScreen].bounds];
    __weak typeof(self)weakSelf = self;
    self.registerV.btnBlock = ^(NSInteger valueIndex) {
        [weakSelf registerBtn];
    };
    [self.view addSubview:self.registerV];
    // Do any additional setup after loading the view.
}
-(void)registerBtn
{
    NSLog(@"注册按钮");
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
