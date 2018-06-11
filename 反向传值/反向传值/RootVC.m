//
//  RootVC.m
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//   

#import "RootVC.h"
#import "NotificationVC.h"
#import "DelegateVC.h"
#import "BlockViewController.h"
#import "AppDelegate.h"
#import "AppDelegateVC.h"
#import "RootViewController.h"
@interface RootVC ()<DelegateViewControllerDelegate>

//通知传值
@property (weak, nonatomic) IBOutlet UIButton *notificationBtn;
//代理传值
@property (weak, nonatomic) IBOutlet UIButton *delegateBtn;
//block传值
@property (weak, nonatomic) IBOutlet UIButton *blockBtn;

//AppDelegate传值
@property (weak, nonatomic) IBOutlet UIButton *appDelegateBtn;



@end

@implementation RootVC


-(void)viewWillAppear:(BOOL)animated{
    AppDelegate *app = (AppDelegate*)[UIApplication sharedApplication].delegate;
    if (app.string) {
        [self.appDelegateBtn setTitle:app.string forState:UIControlStateNormal];
        [self.appDelegateBtn setBackgroundColor:app.color];
    }
}
- (void)viewDidLoad {
    NSLog(@"2222");
    [super viewDidLoad];
    self.title = @"反向传值";
    //通知传值
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(setNoti:) name:@"notification" object:nil];
    
    
}




#pragma mark —————— 通知传值 ——————
- (void)setNoti:(NSNotification *)noti{
    [self.notificationBtn setTitle:noti.userInfo[@"value"] forState:UIControlStateNormal];
    [self.notificationBtn setBackgroundColor:noti.userInfo[@"color"]];
}

//通知传值
- (IBAction)NotificationBtn:(id)sender {
    NotificationVC * vc = [[NotificationVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

//代理传值跳转控制器
- (IBAction)delegateBtnAction {
    DelegateVC *vc = [[DelegateVC alloc]init];
    vc.delegate =  self;
    [self.navigationController pushViewController:vc animated:YES];
}


// block传值跳转控制器
- (IBAction)blockBtnAction {
    
    BlockViewController * vc = [[BlockViewController alloc]init];
    [vc setZZYMyBlock:^(NSString *string, UIColor *color) {
        [self.blockBtn setTitle:string forState:UIControlStateNormal];
        [self.blockBtn setBackgroundColor:color];
    }];
    [self.navigationController pushViewController:vc animated:YES];
    
}



//AppDelegate传值
- (IBAction)AppDelegateBtnAction {
    
    AppDelegateVC *vc = [[AppDelegateVC alloc]init];
   
    [self.navigationController pushViewController:vc animated:YES];
    
}



- (IBAction)ViewControllerAction:(id)sender {
    RootViewController * vc = [[RootViewController alloc]init];
    vc.rootVC = self;
    [self.navigationController pushViewController:vc animated:YES];
    
    
}





//代理传值回调
- (void)delegateViewControllerDidClickwithString:(NSString *)string color:(UIColor *)color{
    [self.delegateBtn setTitle:string forState:UIControlStateNormal];
    [self.delegateBtn setBackgroundColor:color];
}






@end
