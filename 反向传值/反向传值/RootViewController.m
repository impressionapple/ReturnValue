//
//  RootViewController.m
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import "RootViewController.h"
#import "RootVC.h"
@interface RootViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
    [self.rootVC.vcBtn setTitle:self.textFiled.text forState:UIControlStateNormal];
    [self.rootVC.vcBtn setBackgroundColor:[UIColor orangeColor]];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
