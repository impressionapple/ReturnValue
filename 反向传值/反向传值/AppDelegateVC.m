//
//  AppDelegateVC.m
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import "AppDelegateVC.h"
#import "AppDelegate.h"
@interface AppDelegateVC ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AppDelegateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //设置数据信息
    AppDelegate * app =  (AppDelegate*)[UIApplication sharedApplication].delegate;
    app.string = self.textField.text;
    app.color = [UIColor orangeColor];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
