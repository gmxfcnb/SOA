//
//  GMRegisterV.h
//  甩手
//
//  Created by mason on 2019/7/17.
//  Copyright © 2019 soamall. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GMRegisterV : UIView
PropertyStrong(UITextField, accText);
PropertyStrong(UITextField, passText);
PropertyStrong(UIButton, loginBtn);
PropertyStrong(UIButton , registerBtn);
PropertyStrong(UIButton, forgetBtn);
PropertyStrong(UIButton, newsAccountBtn);
PropertyStrong(UIButton, closeBtn);
@property(nonatomic,copy)void(^btnBlock)(NSInteger valueIndex);
@property(nonatomic,copy)void(^registerBtnBlock)(NSInteger valueIndex);
@end

NS_ASSUME_NONNULL_END
