YuriAlertController介绍
=====
YuriAlertController 封装系统自带的UIAlertView 以及 UIActionSheet，使用Block回调来处理各种点击事件。

#### 使用方法
1.带有Block回调的YuriAlertview
```Objective-c
    YuriAlertView *alertView = [[YuriAlertView alloc] initChoiceTipAlertWithMessage:@"title" completion:^(NSInteger index) {
        NSLog(@"%ld",index);
    }];
```
2.带有Block回调的YuriActionSheet
```Objective-c
    YuriActionSheet *actionSheet = [[YuriActionSheet alloc] initWithTipTitle:@"title" WithButtonTitles:@[@"cancel"] completion:^(NSInteger index) {
        NSLog(@"%ld",index);
    }];
```
**更多使用方法详见新项目文件**
