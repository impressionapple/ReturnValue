//
//  BlockViewController.m
//  反向传值
//
//  Created by Mac_UI on 2018/6/11.
//  Copyright © 2018年 Mac_UI. All rights reserved.
//

#import "BlockViewController.h"

@interface BlockViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.ZZYMyBlock) {
        self.ZZYMyBlock(self.textFiled.text, [UIColor purpleColor]);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
