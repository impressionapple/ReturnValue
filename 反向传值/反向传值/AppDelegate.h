//
//  AppDelegate.h
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//AppDelegate属性
/**颜色*/
@property (strong, nonatomic)UIColor *color;
/**字符串*/
@property (copy, nonatomic)NSString *string;
@end

