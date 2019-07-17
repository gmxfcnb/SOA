//
//  GMLoginView.m
//  甩手
//
//  Created by mason on 2019/7/17.
//  Copyright © 2019 soamall. All rights reserved.
//

#import "GMLoginView.h"

@implementation GMLoginView
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
    self.LoginBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    self.LoginBtn.backgroundColor = GMBlueColor;
    [self.LoginBtn addTarget:self action:@selector(LoginClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.LoginBtn];
    self.LoginBtn.sd_layout.topSpaceToView(self, 89).rightSpaceToView(self, 50).widthIs(50).heightEqualToWidth();
}
-(void)LoginClick:(UIButton *)btn
{
    if (self.btnBlock) {
        self.btnBlock(btn.tag);
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
