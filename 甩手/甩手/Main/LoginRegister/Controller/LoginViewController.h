//
//  LoginViewController.h
//  甩手
//
//  Created by mason on 2019/7/14.
//  Copyright © 2019 soamall. All rights reserved.
//

#import <UIKit/UIKit.h>
//登录界面
#import "GMLoginV.h"
//注册VC
#import "GMRegisterViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController
PropertyStrong(GMLoginV, loginV);
PropertyStrong(GMRegisterViewController, registerVC);
@end

NS_ASSUME_NONNULL_END
