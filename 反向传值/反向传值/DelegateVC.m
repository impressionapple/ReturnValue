//
//  DelegateVC.m
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import "DelegateVC.h"

@interface DelegateVC ()
@property (weak, nonatomic) IBOutlet UITextField *filed;

@end

@implementation DelegateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"dsfdsfdsfdsf");
    if ([self.delegate respondsToSelector:@selector(delegateViewControllerDidClickwithString:color:)]) {
        [self.delegate delegateViewControllerDidClickwithString:self.filed.text color:[UIColor greenColor]];
    }
      [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
