//
//  ViewController.m
//  YuriAlertController
//
//  Created by 张晓飞 on 16/3/13.
//  Copyright © 2016年 张晓飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YuriAlertView *alertView = [[YuriAlertView alloc] initChoiceTipAlertWithMessage:@"title" completion:^(NSInteger index) {
        NSLog(@"%ld",index);
    }];
    
    YuriActionSheet *actionSheet = [[YuriActionSheet alloc] initWithTipTitle:@"title" WithButtonTitles:@[@"cancel"] completion:^(NSInteger index) {
        NSLog(@"%ld",index);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
