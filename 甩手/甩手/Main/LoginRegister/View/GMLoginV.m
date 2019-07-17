//
//  GMLoginV.m
//  甩手
//
//  Created by mason on 2019/7/17.
//  Copyright © 2019 soamall. All rights reserved.
//

#import "GMLoginV.h"

@implementation GMLoginV
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatLoginView];
    }
    return self;
}
-(void)creatLoginView
{
    
    self.accText = [[UITextField alloc]init];
    [self addTextFeild:self.accText andPlaceholder:@"请输入账号" andBorder:UITextBorderStyleRoundedRect andBackColor:GMlightGrayColor];
    [self addSubview:self.accText];
    self.accText.sd_layout.topSpaceToView(self,200).leftSpaceToView(self, 30).rightSpaceToView(self, 30).centerXIs(MScreenW).heightIs(50);
    
    self.passText = [[UITextField alloc]init];
    [self addTextFeild:self.passText andPlaceholder:@"请输入密码" andBorder:UITextBorderStyleRoundedRect andBackColor:GMlightGrayColor];
    [self addSubview:self.passText];
    self.passText.sd_layout.topSpaceToView(self.accText, 20).leftEqualToView(self.accText).rightEqualToView(self.accText).centerXIs(MScreenW).heightIs(50);
    
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addBtn:self.loginBtn andTitle:@"登录" andBackColor:GMBlueColor andsetImageName:@"" andRadius:[NSNumber numberWithFloat:10.5]];
    [self.loginBtn addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.loginBtn];
    self.loginBtn.sd_layout.topSpaceToView(self.passText, 40).leftSpaceToView(self, 50).rightSpaceToView(self, 50).centerXIs(MScreenW).heightIs(50);
}
-(void)login:(UIButton *)btn
{
    if (self.btnBlock) {
        self.btnBlock(btn.tag);
    }
}
//textfeild
-(void)addTextFeild:(UITextField *)addText andPlaceholder:(NSString *)placeholderS andBorder:(UITextBorderStyle )borderStyle andBackColor:(UIColor *)backColor
{
    addText.placeholder = placeholderS;
    addText.borderStyle = borderStyle;
    addText.backgroundColor = backColor;
    addText = [[UITextField alloc]init];
    [self addSubview:addText];

}
//button
-(void)addBtn:(UIButton *)loginBtn andTitle:(NSString *)btnTitle andBackColor:(UIColor *)btnColor andsetImageName:(NSString *)btnImage andRadius:(NSNumber *)value
{
//    addChlidVC.title = title;
//    addChlidVC.tabBarItem.image = [UIImage imageNamed:imgName];
//    addChlidVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    GMNavViewController *navVC = [[GMNavViewController alloc]initWithRootViewController:addChlidVC];
//    [self addChildViewController:navVC];
    [loginBtn setTitle:btnTitle forState:UIControlStateNormal];
    [loginBtn setImage:[UIImage imageNamed:btnImage] forState:UIControlStateNormal];
    [loginBtn setBackgroundColor:btnColor];
    [loginBtn setSd_cornerRadius:value];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:button];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
