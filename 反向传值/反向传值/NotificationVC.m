//
//  NotificationVC.m
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import "NotificationVC.h"

@interface NotificationVC ()

@property (weak, nonatomic) IBOutlet UITextField *field;

@end

@implementation NotificationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"通知传值";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"notification" object:nil userInfo:@{@"value":self.field.text,@"color":[UIColor redColor]}];
    [self.navigationController popViewControllerAnimated:YES];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
