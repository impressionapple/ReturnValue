//
//  DelegateVC.h
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol DelegateViewControllerDelegate <NSObject>
@optional

- (void)delegateViewControllerDidClickwithString:(NSString *)string color:(UIColor *)color;

@end
@interface DelegateVC : UIViewController
@property (nonatomic, assign) id<DelegateViewControllerDelegate> delegate;
@end
