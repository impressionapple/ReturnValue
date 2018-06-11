//
//  BlockViewController.h
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockViewController : UIViewController

//block快捷方式
@property (nonatomic, copy) void(^ZZYMyBlock) (NSString * string , UIColor * color);


@end
