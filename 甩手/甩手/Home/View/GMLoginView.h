//
//  GMLoginView.h
//  甩手
//
//  Created by mason on 2019/7/17.
//  Copyright © 2019 soamall. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GMLoginView : UIView
PropertyButton(LoginBtn);
@property(nonatomic,copy)void(^btnBlock)(NSInteger tagIndex);
@end

NS_ASSUME_NONNULL_END
